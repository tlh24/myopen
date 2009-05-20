// using processing.js to show stuff


function scatterDraw(x,y,color, clear) {

	//does a scatterplot of the data. 
	// x and y are vecrtors.
	var len = Math.min(x.dimensions(), y.dimensions()); 
	var minx = x.min(); 
	var miny = y.min(); 
	var spanx = x.max() - minx; 
	var spany = y.max() - miny; 
	var canvas = document.getElementById("canvas");
	var ctx = canvas.getContext("2d");
	if(clear){
		ctx.clearRect(0,0,canvas.width,canvas.height);
	}
	
	var sizex = canvas.width - 3; 
	var sizey = canvas.height -3; 
	var xe = x.elements ; 
	var ye = y.elements ; 
	ctx.fillStyle = "rgba("+color+")";
	var ox = Math.round((0 - minx)/spanx * sizex) ; 
	var oy = Math.round((0 - miny)/spany * sizey) ; 
	if(ox >= 0 && ox <= canvas.width){
		ctx.beginPath();  
		ctx.moveTo(ox,0); ctx. lineTo(ox, canvas.height); 
		ctx.stroke();
	}
	if(oy >= 0 && oy <= canvas.width){
		ctx.beginPath();  
		ctx.moveTo(0,oy); ctx. lineTo(canvas.width, oy); 
		ctx.stroke();
	}
	
	//alert(" minx=" + minx + " spanx=" + spanx +
		//" miny=" + miny + " spany=" + spany +
		//" len=" + len + " sizex=" + sizex); 
	for(i=0; i< len; i++){
		var xx = Math.round(((xe[i] - minx)/spanx) * sizex) ; 
		var yy = Math.round(((ye[i] - miny)/spany) * sizey) ;
		ctx.fillRect (xx,yy,3,3); 
	}
}


