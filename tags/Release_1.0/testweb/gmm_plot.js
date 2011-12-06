
function scatterDraw(x,y,color, clear, axes, dot) {
	//does a scatterplot of the data. 
	// x and y are vecrtors.
	console.log(" scatterDraw colors = " + color);
	var len = Math.min(x.dimensions(), y.dimensions()); 
	var minx = axes[0]; 
	var miny = axes[2];  
	var spanx = axes[1] - minx; 
	var spany = axes[3] - miny; 
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
		ctx.moveTo(ox,0); ctx.lineTo(ox, canvas.height); 
		ctx.stroke();
	}
	if(oy >= 0 && oy <= canvas.width){
		ctx.beginPath();  
		ctx.moveTo(0,oy); ctx.lineTo(canvas.width, oy); 
		ctx.stroke();
	}
	
	for(i=0; i< len; i++){
		var xx = Math.round(((xe[i] - minx)/spanx) * sizex) ; 
		var yy = Math.round(((ye[i] - miny)/spany) * sizey) ;
		ctx.fillRect(xx,yy,dot,dot); 
	}
}

function ellipseDraw(x,y,color, axes){
	var len = x.dimensions(); 
	var m = Matrix.Zero(len, 2); 
	var me = m.elements; 
	var xe = x.elements; 
	var ye = y.elements; 
	for( i=0; i < len ; i++){
		me[i][0] = xe[i]; 
		me[i][1] = ye[i]; 
	}
	var mean = calcMean(m); 
	var meane = mean.elements ;
	var cov = calcCov(m, mean); 
	var cove = cov.elements; 
	var a = cove[0][0]; 
	var b = cove[0][1]; 
	var c = cove[1][0]; 
	var d = cove[1][1]; 
	//get the eigenvalues
	var lambda1 = ((a+d) + Math.sqrt(4*b*c+(a-d)*(a-d)))/2 ; 
	var lambda2 = ((a+d) - Math.sqrt(4*b*c+(a-d)*(a-d)))/2 ; 
	//calculate the eigenvectors. 
	var vec1 = Vector.Zero(2);  var vec1e = vec1.elements; 
	var vec2 = Vector.Zero(2); var vec2e = vec2.elements;
	if( c != 0.0){
		vec1e[0] = lambda1-d; 
		vec2e[0] = lambda2-d; 
		vec1e[1] = c; 
		vec2e[1] = c; 
	} else if (b != 0.0){
		vec1e[0] = b; 
		vec2e[0] = b; 
		vec1e[1] = lambda1-a; 
		vec2e[1] = lambda2-a; 
	} else {
		vec1e[0] = 1; 
		vec2e[0] = 0; 
		vec1e[1] = 0; 
		vec2e[1] = 1; 
	}
	normalizeVec(vec1); 
	normalizeVec(vec2); 
	scaleVec(vec1, Math.sqrt(lambda1) * 1.5); 
	scaleVec(vec2, Math.sqrt(lambda2) * 1.5); 
	/*console.log("cov: a = " +a+" b="+b+" c="+c+" d="+d+"\n"+
		" lambda1="+lambda1+" lambda2="+lambda2+"\n"+
		"eigvec1: [0]="+vec1e[0]+" [1]="+vec1e[1] +"\n"+ 
		"eigvec2: [0]="+vec2e[0]+" [1]="+vec2e[1]); */
		
	/*vec1e[0] = 20; 
	vec2e[0] = 0; 
	vec1e[1] = 0; 
	vec2e[1] = 20; */
	//now use these to plot an ellipse. 
	var canvas = document.getElementById("canvas");
	var ctx = canvas.getContext("2d");
	var minx = axes[0]; 
	var miny = axes[2];  
	var spanx = axes[1] - minx; 
	var spany = axes[3] - miny; 
	var sizex = canvas.width - 3; 
	var sizey = canvas.height -3; 
	ctx.beginPath();  
	for(theta = 0.0; theta <= Math.PI * 2 + 0.0001 ; theta += Math.PI / 16){
		var x1 = vec1e[0] * Math.sin(theta) + vec2e[0] * Math.cos(theta) ; 
		var y1 = vec1e[1] * Math.sin(theta) + vec2e[1] * Math.cos(theta) ; 
		var xx = ((x1+meane[0])-minx)/spanx * sizex; 
		var yy = ((y1+meane[1])-miny)/spany * sizey; 
		if(theta == 0.0){
			ctx.moveTo(xx,yy); 
		} else {
			//console.log("line at " + xx + " , " + yy); 
			ctx.lineTo(xx,yy); 
		}
	}
	ctx.closePath(); 
	ctx.fillStyle = "rgba("+color+")";
	ctx.fill(); 
}


	
