(* simple test client *)

(* first task - recieve from a udp socket *)
open Unix
open Printf
open Tk
open Glwindow



let gwfwind = new glwindow
let goutsamp1000 = ref false
let goutsamp1 = ref false
let gbottom4 = ref false

let _ = 
	let sock = Unix.socket Unix.PF_INET Unix.SOCK_DGRAM 0 in
	(
	try
		Unix.bind sock (Unix.ADDR_INET (Unix.inet_addr_any , 4340)) ; 
		printf "listening on port 4340\n%!"; 
	with 
		| Unix.Unix_error(Unix.ECONNREFUSED, "connect", "") -> 
			print_endline "could not open a unix socket @ port 4340 for cross-probing" ; 
	); 
	(* now need to make the GUI *)
	let top = openTk () in
	Wm.title_set top "myopen data client";
	let togl = Togl.create ~width:1200 ~height:900 
		~rgba:true ~double:true ~depth:true top in
	gwfwind#bind top togl ;
	(* menubar! *)
	let menubar = Frame.create ~borderwidth:0 ~relief:`Raised top in
	let fileb = Menubutton.create ~text:"File" menubar in
	let optionb = Menubutton.create ~text:"Options" menubar in
	let filemenu = Menu.create ~tearoff:false fileb in
	let optionmenu = Menu.create ~tearoff:false optionb in
	Menubutton.configure fileb ~menu:filemenu;
	Menubutton.configure optionb ~menu:optionmenu;
	Menu.add_command filemenu ~label:"Quit" ~command:(fun () -> closeTk () ; ) ; 
	(*add options*)
	let addOption label cmd ic = 
		let v = Textvariable.create() in
		Textvariable.set v (if ic then "On" else "Off") ; 
		Menu.add_checkbutton optionmenu ~label ~indicatoron:true
			~variable:v
			~offvalue:"Off" ~onvalue:"On"
			~command:(fun () -> cmd( (Textvariable.get v)="On" )) ; 
	in 
	addOption "output sample data full rate" (fun b -> goutsamp1 := b;  ) !goutsamp1 ; 
	addOption "output sample data 1/sec rate" (fun b -> goutsamp1000 := b; ) !goutsamp1000 ; 
	addOption "show first 4 channels only" (fun b -> gbottom4 := b; ) !gbottom4 ; 
	pack ~side:`Left [Tk.coe fileb; Tk.coe optionb] ; 
	place ~height:28 ~x:0 ~y:0 menubar ; 
	(*done with menu*)
	(* need to set up the 16 wf traces *) 
	(* 4 sec each = 16k samples, x, y each *)
	let len = 1*1024 in
	let rawa = Array.init 16 (fun i -> Raw.create_static `short (len*2) ) in
	Array.iter (fun raw -> 
		for i = 0 to len-1 do (
			let y = i - (len/2) in
			Raw.set raw ~pos:(i*2+0) y ; (* x -- will not be overwritten *)
			Raw.set raw ~pos:(i*2+1) y ; (* y -- will be overwritten *)
		) done ;
	) rawa ; 
	let invmap = Array.of_list [14; 10; 6; 2; 15; 11; 7; 3; 12; 8; 4; 0; 13; 9; 5; 1] in
	let render () = 
		GlMat.push(); 
		GlMat.scale ~x:0.99 ~y:(0.99) ~z:1.0 () ; 
		(* draw each of the waveforms as a line strip *)
		Array.iteri (fun i raw -> 
			GlMat.push() ; 
			let invi = invmap.(i) in
			let c = if !gbottom4 then (foi invi) -. 12.0 else foi invi in
			let n = if !gbottom4 then 4.0 else 16.0 in
			let len2 = foi(len/2) in
			if (!gbottom4 && c < 4.0 && c >= 0.0) || not !gbottom4 then (
				GlMat.translate ~x:0.0 ~y:(1.0 -. (1.0/. n) -. (2.0/. n)*.c)~z:0.0 ();  
				GlMat.scale ~x:(1.0 /. len2 ) ~y:(1.0 /. (32768.0 *. n)) ~z:(1.0) () ;
				(* the background *)
				GlDraw.begins `lines ; 
				GlDraw.color ~alpha:0.35 (1.0 , 0.0 , 0.3 ); 
				GlDraw.vertex2 ((-1.0 *. len2) , 0.0) ; 
				GlDraw.vertex2 ((1.0 *. len2) , 0.0) ; 
				GlDraw.color ~alpha:0.2 (1.0 , 1.0 , 1.0 ); 
				if invi = 0 then (
					GlDraw.vertex2 ((-1.0 *. len2) , -32700.0) ; 
					GlDraw.vertex2 ((1.0 *. len2) , -32700.0) ; 
				);
				GlDraw.vertex2 ((-1.0 *. len2) , 32700.0) ; 
				GlDraw.vertex2 ((1.0 *. len2) , 32700.0) ; 
				GlDraw.ends () ; 
				if(invi mod 2 = 1) then (
					GlDraw.begins `quads ; 
					GlDraw.color ~alpha:0.1 (1.0 , 1.0 , 1.0 ); 
					GlDraw.vertex2 ((-1.0 *. len2) , -32700.0) ; 
					GlDraw.vertex2 ((1.0 *. len2) , -32700.0) ; 
					GlDraw.vertex2 ((1.0 *. len2) , 32700.0) ; 
					GlDraw.vertex2 ((-1.0 *. len2) , 32700.0) ; 
					GlDraw.ends (); 
				); 
				(* the signals *)
				if( invi mod 4 = 2 || invi mod 4 = 3) then (
					GlDraw.color ~alpha:0.9 (0.5 , 1.0 , 1.0 ); 
				) else (
					GlDraw.color ~alpha:0.9 (1.0 , 1.0 , 0.3 ); 
				); 
				GlArray.vertex `two raw ; 
				GlArray.draw_arrays `line_strip 0 (len-1) ; 
			) ;
			GlMat.pop() ; 
		) rawa; 
		GlMat.pop(); 
	in
	gwfwind#setRenderCB render ;
	let datain () = 
		let (can_read, _, _) = Unix.select [sock] [] [] 0.00 in
		List.iter (fun client -> 
			if client = sock then (
				let buffer = String.create (1028) in
				let inlen, sockadr = Unix.recvfrom sock buffer 0 1028 [] in
				if inlen = 1028 || inlen = 516 then (
					(* sent from a little-endian proc to a little-endian proc - no need for byte translation. *)
					let rssum = ref 0 in
					let rs chan = 
						let r = IO.read_i16 chan in
						rssum := !rssum + r ; 
						r
					in
					let ri chan = IO.read_i32 chan in
					let c = IO.input_string buffer in
					let posor = ri c in
					let pos = posor/(16*2) in (* specifies the location in the array .. *)
					(* divide because the pointer counts bytes transmitted. *)
					(*printf "got a packet len %d @ %x\n%!" inlen pos ;  *)
					(* loop through the string, pulling off shorts *)
					rssum := 0;
					for i = 0 to inlen/(16*2) -1  do ( (* two bytes per short *)
						for j = 0 to 15 do (
							Raw.set (rawa.(j)) ~pos:(((pos +i) land (len-1))*2 + 1) (rs c) ; 
						) done ; 
					) done ; 
					gwfwind#render togl ; 
					(* printf "src ptr %x sum %d \n%!" posor !rssum; --debug! *)
					(* write the data to stdout (e.g. for visual examination
					or for piping to a file *)
					let ar = Array.make 16 0 in
					if !goutsamp1 then (
						(* just read it in again *)
						let cc = IO.input_string buffer in
						ignore(ri cc); 
						for k = 0 to inlen/32 -1 do (
							for j = 0 to 15 do (
								ar.(invmap.(j)) <- rs cc; 
							) done ; 
							Array.iter (fun s -> printf "%d\t" s) ar; 
							printf "\n%!";
						) done; 
						printf " %!" ; (* flush *)
					) else (
						if pos mod 500 = 0 && !goutsamp1000 then (
							let cc = IO.input_string buffer in
							ignore(ri cc); 
							for j = 0 to 15 do (
								ar.(invmap.(j)) <- rs cc; 
							) done ; 
							Array.iter (fun s -> printf "%d\t" s) ar; 
							printf "\n%!"; 
						); 
					); 
				); 
			); 
		) can_read ; 
	in
	Togl.timer_func ~ms:1 ~cb:datain ; 
	Printexc.print mainLoop ()          (* and go! *)