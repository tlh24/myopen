function retrieveDataDraw(samples){
	retrieveData("data_cont.pl",samples, retrieveDraw); //this is in gmm_test.js
}
function retrieveDraw(){
        if (http_request.readyState == 4) {
                if (http_request.status == 200) {
                        result = http_request.responseText;
			//result is the data from myopen board!!
			//need to process it here (call math functions)
			// and return result. 
			processed = processDraw(result); 
			var node = document.getElementById("-2"); 
			//var par = node.parentNode;
			//var rep = node.cloneNode(true); 
			node.innerHTML = processed;
			//rep.setAttribute("id", "-1"); //this one to be replaced!
			//par.insertBefore(rep, node);
                } else {
                        alert('There was a problem with the request.');
                }
        }
}
function processDraw(d){
	var res = " "; //what is to be returned.
	var mat = d.split("\n"); 
	//first line is the matrix size. 
	var header = mat[0] ; 
	//console.log( "from ajax, header=" + header  ); 
	var matches = header.match( /\b\d+\b/g );
	//var matches = re.exec(header); 
	var rows = parseInt(matches[0]); 
	var cols = parseInt(matches[1]); 
	//console.log( "from ajax, rows=" + rows + " cols=" + cols); 
	var m = Matrix.Zero(rows, cols); 
	var me = m.elements ;
	for( var r = 0; r<rows; r++ ){
		var row = mat[r + 1]; 
		var col = row.split(" ");  
		for( c = 0; c<cols; c++ ){
			var samp = col[c] ; 
			me[r][c] = parseFloat(samp); 
		}
	}
	//console.log("m.rows = " + m.rows() + "m.cols() = " + m.cols())
	var node = document.getElementById("Lfeat"); 
	g_x_feature = node.selectedIndex;
	node = document.getElementById("Lchan"); 
	if(node.selectedIndex>= cols){
		alert("This channel does not exist, try again");
	}
	displayData(m);
	/*
	else if(g_y_channel>= cols){
		alert("This channel does not exist, try again");
	}
	else{
		var iy = g_y_channel + g_y_feature * cols ; 
		var miny = m.row(0).min();
		var maxy = m.row(0).max();
		var axes = [miny, maxy]; 
	}
	for(i=0; i<m.cols(); i++){
		var a = m.row(i);
		mainLoop(a);
	} */
}

var scnt = 0
function startPlot(){
	intervalTimer = setInterval('retrieveDataDraw(125)', 125);
}
function stopPlot(){
	clearInterval(intervalTimer); 
}
function displayData(x){
	var time = new Date();	
	var canvas = document.getElementById("canvas2");	
	var n = x.rows();
	var m = x.cols();
//	console.log("m = " + x.cols() + "n = " + x.rows())
	var xe = x.elements;
//	var ma = Matrix.Zero(n, 3);
//	var mae = ma.elements;
//	for(r = 0; r<n; r++){
//		for(c = 0; c<3; c++){
//			mae[r][c] = .7*(c+1)*xe[r]+0.5*c;
//		}
//	}	
	var miny = -0.1
	var spany = 2 - miny; 
	var sizex = canvas.width - 3; 
	var sizey = canvas.height -3; 
	var ctx = canvas.getContext("2d");
	
	var seconds = time.getSeconds() % 20; 
	var milisec = time.getMilliseconds()/1000; 
	scnt = scnt % 5000; 
	var start = scnt * sizex / 5000; 
	var stop = (scnt+n) * sizex / 5000; 
	ctx.clearRect(start,0,stop-start + 20,canvas.height);
	
	//console.log("sec="+seconds+" mili="+milisec); 
	var colors = ["100,0,255", 
			"0,250,200",
			"170,255,85",
			"255,85,0"]; 
	for(var i = 0; i<m; i++){
		ctx.beginPath();
		ctx.strokeStyle ="rgb("+colors[i]+")";
		for(var k=0; k < n; k++){
			var yy = xe[k][i] ; 
//			yy = yy + (seconds + milisec + k/1000)/10; 
			yy = Math.round(((yy - miny)/spany) * sizey) ; 
			var xx = (scnt+k) * sizex / 5000 ; 
//			console.log("xx=" + xx + " yy=" + yy + " xe[k]=" + (xe[k]) + 
//				" spany="+spany+" miny="+miny+" n="+n); 
			if(k == 0){
				ctx.moveTo(xx,yy); 
			} else {
				ctx.lineTo(xx,yy); 
			}
		}
		ctx.stroke();
	}
	scnt += n; 

}
