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
	Wm.title_set top "Neurocaml";
	let togl = Togl.create ~width:640 ~height:480 
		~rgba:true ~double:true ~depth:true top in
	gwfwind#bind top togl ;
	(* need to set up the 16 wf traces *) 
	(* 4 sec each = 16k samples, x, y each *)
	let len = 16*1024 in
	let rawa = Array.init 16 (fun i -> Raw.create `short (len*2) ) in
	Array.iter (fun raw -> 
		for i = 0 to len do (
			let y = i - (len/2) in
			Raw.set raw ~pos:i y ; (* x -- will be overwritten *)
			Raw.set raw ~pos:i y ; (* y -- not to be overwritten *)
		) done ;
	) rawa ; 
	gwfwind#setRenderCB ( fun () ->
		(* draw each of the waveforms as a line strip *)
		Array.iteri (fun i raw -> 
			GlMat.push() ; 
			let n = 16.0 in
			let c = foi i in
			GlMat.translate ~x:0.0 ~y:(-1.0 +. (1.0/. n) +. (2.0/. n)*.c)~z:0.0 (); 
			GlMat.scale ~x:(1.0 /. (foi(len/2))) ~y:(1.0 /. 32768.0) ~z:(1.0) () ;
			GlDraw.color ~alpha:0.5 (0.4 , 1.0 , 1.0 ); 
			GlArray.vertex `two raw ; 
			GlArray.draw_arrays `line_strip 0 (len/2-1) ; 
		) rawa; 
	); (* 
	let buffer = String.create 1024*2 in
	while 1 do (
		let len, sockadr = Unix.recvfrom sock buffer 0 (1024*2) [] in
		if len = 1028 then (
			(* network byte order is big - endian *)
			let c = IO.input_string buffer in
			let ri chan = 
				let a = IO.read_byte chan in
				let b = IO.read_byte chan in
				let c = IO.read_byte chan in
				let d = IO.read_byte chan in
				a* 16777216 + b * 65536 + c * 256 + d 
			in
			let pos = ri c in (* specifies the location in the array .. *)
		)
	) done; 
	*)
	Printexc.print mainLoop ()          (* and go! *)