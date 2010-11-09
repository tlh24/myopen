open Tk
open Printf

let foi = float_of_int
let iof = int_of_float

class glwindow = 
object (self)
	(* use currying to provide the runtime-created arguments *)
	val mutable m_fixedOrtho = true ; (*fixed aspect ratio *)
	val mutable m_windowsize = 10, 10
	val mutable m_pan = 0.0, 0.0
	val mutable m_oldpan = 0.0, 0.0
	val mutable m_zoom = 1.0
	val mutable m_curs = 0.0 , 0.0
	val mutable m_oldcurs = 0.0 , 0.0
	val mutable m_renderCB = []
	val mutable m_button3pressed = false
	val mutable m_xrot = 0.0
	val mutable m_yrot = 0.0
	
	method setPan p = m_pan <- p
	method setFixedOrtho b = m_fixedOrtho <- b 
	method setRenderCB cb = 
		m_renderCB <- cb :: m_renderCB ; 
	
	method calcCursorPos ev pan = 
		let w, h = m_windowsize in
		let ar = if m_fixedOrtho then 1.0 else (foi w)/.(foi h) in 
		let w2, h2 = (foi w) /. 2. , (foi h) /. 2. in
		let x = ((foi ev.ev_MouseX) -. w2) /. w2 *. ar in
		let y = ((foi ev.ev_MouseY) -. h2) /. h2 *. -1. in
		(x /. m_zoom -. (fst pan)) , (y /. m_zoom -. (snd pan))
		
	method updateCursorPos ev = 
		m_curs <- self#calcCursorPos ev m_pan
	method cursorPos ev =  (* this one returns the cursor position & updates internal store*)
		m_curs <- self#calcCursorPos ev m_pan ; 
		m_curs
		
	method render togl =
		Togl.make_current togl ; 
(* 		GlClear.accum ~alpha:0.0 (0.0, 0.0, 0.0) ;  *)
(* 		GlFunc.accum `load 0.0 ;  *)
		GlClear.color (0.0, 0.0, 0.0) ~alpha:0.0;
		GlClear.clear [`color; `depth];
		Gl.disable `depth_test ;
		Gl.enable `blend ; 
		GlMat.mode `modelview ; 
		GlMat.load_identity () ; 
		GlMat.rotate ~angle:m_yrot ~x:0.0 ~y:1.0 ~z:0.0 () ; 
		GlMat.rotate ~angle:m_xrot ~x:1.0 ~y:0.0 ~z:0.0 () ; 
		GlMat.scale ~x:(m_zoom) ~y:(m_zoom) ~z:(m_zoom) () ; 
		GlMat.translate ~x:(fst m_pan) ~y:(snd m_pan) ~z:(0.0) (); 
		(* callbacks *)
		List.iter (fun f -> f() ) m_renderCB ; 
		Gl.flush ();
(* 		GlFunc.accum `accum 0.5 ;  *)
(* 		GlFunc.accum `return 1.0 ;  *)
		Togl.swap_buffers togl ; 
		
	method frustrum fovy aspect zmin zmax = 
		let ymax = zmin *. tan(fovy *. 3.14159 /. 360.0 ) in
		let ymin = -1.0 *. ymax in
		let xmin = ymin *. aspect in
		let xmax = ymax *. aspect in
		GlMat.frustum ~x:(xmin,xmax) ~y:(ymin, ymax) ~z:(zmin, zmax) ; 
	
	method reshape togl = 
		let w = (float_of_int (Togl.width togl))  in
		let h = (float_of_int (Togl.height togl))  in
		let ar = w /. h in
		m_windowsize <- (Togl.width togl) , (Togl.height togl);
		GlDraw.viewport ~x:0 ~y:0 ~w:(Togl.width togl) ~h:(Togl.height togl);
		GlMat.mode `projection ; 
		GlMat.load_identity () ; 
		if not m_fixedOrtho then (
			(* GlMat.ortho ~x:(-1. *. ar, 1. *. ar) ~y:(-1. ,1. ) ~z:(-1., 1.) *)
			printf "loading frustrum a.r. %f\n%!" ar ; 
			self#frustrum 45.0 ar (-1.0) 1.0 ; 
			(*GluMat.look_at ~eye:(0.0, 0.0, -2.0) ~center:(0.0, 0.0, 0.0) ~up:(0.0, 1.0, 0.0) ; 
			GluMat.perspective ~fovy:45.0 ~aspect:ar ~z:(-1.0, 1.0) ; *)
		)
		else  (* slow view is strictly 2x2 *)
			GlMat.ortho ~x:(-1. , 1.) ~y:(-1. ,1. ) ~z:(-20., 20.);
		GlMat.mode `modelview ; 
		GlMat.load_identity () ; 
		GlFunc.blend_func ~src:`src_alpha ~dst:`one;
		(* http://pyopengl.sourceforge.net/documentation/manual/glBlendFunc.3G.html *)
		GlArray.enable `vertex;
		self#render togl ; 
		
	method bind (top : Widget.toplevel Widget.widget) togl = 
		(* bind mouse events *)
		bind ~events:[`ButtonPressDetail(3)] ~fields:[`MouseX; `MouseY] ~action:
			(fun ev -> 
				m_oldcurs <-  self#calcCursorPos ev m_pan; 
				m_oldpan <- m_pan ;
				m_button3pressed <- true ;
				bind ~events:[`Motion] ~fields:[`MouseX; `MouseY] ~action:
				(fun evinf ->
					let prescurs = self#calcCursorPos evinf m_oldpan in
					m_pan <- Pts2.add (Pts2.sub prescurs m_oldcurs) m_oldpan ; 
					self#render togl
				) top; 
			) top ;
		bind ~events:[`ButtonReleaseDetail(3)]  ~fields:[`MouseX; `MouseY] ~action:
			(fun ev -> 
				self#updateCursorPos ev ; 
				m_button3pressed <- false ; 
				bind ~events:[`Motion] ~fields:[`MouseX; `MouseY] ~action:(fun ev -> ()) top;
				self#render togl ;
			) top ; 
		bind ~events:[`KeyPressDetail("Up")] ~action:
			(fun ev -> m_xrot <- m_xrot +. 2.0; self#render togl ;) top ; 
		bind ~events:[`KeyPressDetail("Down")] ~action:
			(fun ev -> m_xrot <- m_xrot -. 2.0; self#render togl ;) top ; 
		bind ~events:[`KeyPressDetail("Left")] ~action:
			(fun ev -> m_yrot <- m_yrot +. 2.0; self#render togl ;) top ; 
		bind ~events:[`KeyPressDetail("Right")] ~action:
			(fun ev -> m_yrot <- m_yrot -. 2.0; self#render togl ;) top ; 
			
		let doZoom ev zm = 
			self#updateCursorPos ev ; 
			let steps = 1.0 in
			let z = exp((log zm) /. steps) in
			for i = 1 to (iof steps) do (
				let l = Pts2.add m_pan m_curs in
				let s = 1. /. z -. 1. in
				m_pan <- Pts2.add (Pts2.scl l s) m_pan; 
				m_zoom <- m_zoom *. z ; 
				self#render togl ; 
			) done ; 
		in
		bind ~events:[`ButtonPressDetail(5)] 
			~fields:[`MouseX; `MouseY] ~action:(fun ev -> doZoom ev (1. /. 1.2) ) top; 
		bind ~events:[`ButtonPressDetail(4)] 
			~fields:[`MouseX; `MouseY] ~action:(fun ev -> doZoom ev 1.2) top;
		(* bind the render / reshape functions *)
		Togl.display_func togl ~cb:(fun () -> self#render togl );
		Togl.reshape_func togl ~cb:(fun () -> self#reshape togl );
		(* fit it to the window *)
		pack ~fill:`Both ~expand:true [togl];
end
