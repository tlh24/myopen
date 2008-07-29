(* simple test client *)

(* first task - recieve from a udp socket *)
open Unix
open Printf
open Tk
open Glwindow

let gwfwind = new glwindow

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
	(* need to set up the 16 wf traces *) 
	(* 4 sec each = 16k samples, x, y each *)
	let len = 1*1024 in
	let rawa = Array.init 16 (fun i -> Raw.create `short (len*2) ) in
	Array.iter (fun raw -> 
		for i = 0 to len-1 do (
			let y = i - (len/2) in
			Raw.set raw ~pos:(i*2+0) y ; (* x -- will not be overwritten *)
			Raw.set raw ~pos:(i*2+1) y ; (* y -- will be overwritten *)
		) done ;
	) rawa ; 
	let render () = 
		GlMat.push(); 
		GlMat.scale ~x:0.99 ~y:(-0.99) ~z:1.0 () ; 
		(* draw each of the waveforms as a line strip *)
		Array.iteri (fun i raw -> 
			GlMat.push() ; 
			let n = 16.0 in
			let c = foi i in
			let len2 = foi(len/2) in
			GlMat.translate ~x:0.0 ~y:(-1.0 +. (1.0/. n) +. (2.0/. n)*.c)~z:0.0 ();  
			GlMat.scale ~x:(1.0 /. len2 ) ~y:(1.0 /. (32768.0 *. n)) ~z:(1.0) () ;
			(* the background *)
			GlDraw.begins `lines ; 
			GlDraw.color ~alpha:0.35 (1.0 , 0.0 , 0.3 ); 
			GlDraw.vertex2 ((-1.0 *. len2) , 0.0) ; 
			GlDraw.vertex2 ((1.0 *. len2) , 0.0) ; 
			GlDraw.color ~alpha:0.2 (1.0 , 1.0 , 1.0 ); 
			if i = 0 then (
				GlDraw.vertex2 ((-1.0 *. len2) , -32700.0) ; 
				GlDraw.vertex2 ((1.0 *. len2) , -32700.0) ; 
			);
			GlDraw.vertex2 ((-1.0 *. len2) , 32700.0) ; 
			GlDraw.vertex2 ((1.0 *. len2) , 32700.0) ; 
			GlDraw.ends () ; 
			if(i mod 2 = 1) then (
				GlDraw.begins `quads ; 
				GlDraw.color ~alpha:0.1 (1.0 , 1.0 , 1.0 ); 
				GlDraw.vertex2 ((-1.0 *. len2) , -32700.0) ; 
				GlDraw.vertex2 ((1.0 *. len2) , -32700.0) ; 
				GlDraw.vertex2 ((1.0 *. len2) , 32700.0) ; 
				GlDraw.vertex2 ((-1.0 *. len2) , 32700.0) ; 
				GlDraw.ends (); 
			); 
			(* the signals *)
			if( i mod 4 = 2 || i mod 4 = 3) then (
				GlDraw.color ~alpha:0.9 (0.5 , 1.0 , 1.0 ); 
			) else (
				GlDraw.color ~alpha:0.9 (1.0 , 1.0 , 0.3 ); 
			); 
			GlArray.vertex `two raw ; 
			GlArray.draw_arrays `line_strip 0 (len-1) ; 
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
				if inlen = 1028 then (
					(* sent from a little-endian proc to a little-endian proc - no need for byte translation. *)
					let rs chan = IO.read_i16 chan in
					let ri chan = IO.read_i32 chan in
					let c = IO.input_string buffer in
					let pos = (ri c)/(16*2) in (* specifies the location in the array .. *)
					(* divide because the pointer counts bytes transmitted. *)
					(*printf "got a packet len %d @ %x\n%!" inlen pos ;  *)
					(* loop through the string, pulling off shorts *)
					for i = 0 to 1024/(16*2) -1  do ( (* two bytes per short *)
						for j = 0 to 15 do (
							Raw.set (rawa.(j)) ~pos:(((pos +i) land (len-1))*2 + 1) (rs c) ; 
						) done ; 
						if i = 0 && pos mod 1024 = 0 then (
							let cc = IO.input_string buffer in
							ignore(ri cc); 
							for j = 0 to 15 do (
								printf "%d\t" (rs cc); 
							) done ; 
							printf "\n%!"; 
						); 
					) done ; 
					gwfwind#render togl ; 
				); 
			); 
		) can_read ; 
	in
	Togl.timer_func ~ms:1 ~cb:datain ; 
	Printexc.print mainLoop ()          (* and go! *)