
function retrieveData(samples)
{       //id is the pid number in the sql database. 
        //div is the division id to replace in the xml schema.
        //first, we have to get the unformatted text at this node. 
        poststr = "samples=" + samples ; 
        //alert(poststr); 
        http_request = false;
        http_request = new XMLHttpRequest(); //this will only work for mozilla and safari, but that's ok
        if (http_request.overrideMimeType) {
                http_request.overrideMimeType('text/xml');
        }       
        http_request.onreadystatechange = retrieveUpdate; //set the callback. 
        //code that is independent of data. 
        http_request.open('POST', 'data.pl', true);
        http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        http_request.setRequestHeader("Content-length", poststr.length);
        http_request.setRequestHeader("Connection", "close");
        http_request.send(poststr);
}
function retrieveUpdate(){
        if (http_request.readyState == 4) {
                if (http_request.status == 200) {
                        result = http_request.responseText;
			//result is the data from myopen board!!
			//need to process it here (call math functions)
			// and return result. 
			processed = processData(result); 
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
var g_x_feature = 0; 
var g_x_channel = 0; 
var g_y_feature = 0; 
var g_y_channel = 0; 

function processData(d){
	var res = " "; //what is to be returned.
	var mat = d.split("\n"); 
	//first line is the matrix size. 
	var header = mat[0] ; 
	//alert( "header=" + header  ); 
	var matches = header.match( /\b\d+\b/g );
	//var matches = re.exec(header); 
	var rows = parseInt(matches[0]); 
	var cols = parseInt(matches[1]); 
	//alert( "rows=" + rows + " cols=" + cols); 
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
	var classes = 9; 
	var cs_len =rows/ classes; 
	var cs = [];
	var cs_test = [];


	for(t=0; t<classes; t++){
		cs[t] = cls(m,t*cs_len, 100, 50); 
		cs_test[t] = cls_test(m,t*cs_len, 100, 50);
	}
	
	//get the drop-down menu selections. 
	var node = document.getElementById("featone"); 
	g_x_feature = node.selectedIndex;
	node = document.getElementById("chanone"); 
	g_x_channel = node.selectedIndex;
	var node = document.getElementById("feattwo"); 
	g_y_feature = node.selectedIndex;
	node = document.getElementById("chantwo"); 
	g_y_channel = node.selectedIndex;
	if(g_x_channel>= cols){
		alert("This channel does not exist, try again");
	}
	else if(g_y_channel>= cols){
		alert("This channel does not exist, try again");
	}
	else{
		//plot all the classes ...
		var ix = g_x_channel + g_x_feature * cols; 
		var iy = g_y_channel + g_y_feature * cols ; 
		//alert("x channel = " + ix + " y channel = " + iy);
		//res = res+printVector(cs[0].col(ix));
		var colors = ["100,0,255", 
				"35,85,255",
				"0,170,255",
				"0,250,200",
				"85,255,170",
				"170,255,85",
				"255,255,0",
				"255,170,0", 
				"255,85,0"]; 
		//calc min / max for x & y over all variables. 
		var minx = cs[0].col(ix).min() ; 
		var miny = cs[0].col(iy).min() ; 
		var maxx = cs[0].col(ix).max() ; 
		var maxy = cs[0].col(iy).max() ; 
		for(v=1; v<classes; v++){
			minx = Math.min(cs[v].col(ix).min(), minx); 
			miny = Math.min(cs[v].col(iy).min(), miny); 
			maxx = Math.max(cs[v].col(ix).max(), maxx); 
			maxy = Math.max(cs[v].col(iy).max(), maxy); 
		}
		var axes = [minx, maxx, miny, maxy]; 
		var acc = [];
		for(v=0; v<classes; v++){
			var clear = v == 0; 
			scatterDraw(cs[v].col(ix), cs[v].col(iy),colors[v]+",0.75", clear, axes,3);
			ellipseDraw(cs[v].col(ix), cs[v].col(iy),colors[v]+",0.25", axes);
			acc[v] = accuracy(cs[v], cs_test[v], g_x_channel); 
	
	}
	}
	res = res + printMatrix(acc[0]);
//	res = res+ printVector(acc[0]);
//	res = res + acc[0];

	return res ; 

}

// break up into classes

function cls(m,offset,len,shift){ // make variables work with this!!!
	// len = window length, shift = window shift
	var cl_num = 9;
	var cl_len = m.rows()/cl_num;
	var c = m.minor(offset,0,cl_len-200, m.cols()); // used to make the model
	var data = m.minor(offset+cl_len-200,0,200, m.cols()); // used to test accuracy
	var a_len = Math.round((c.rows()/shift)-1);
	var a = Matrix.Zero(a_len, 6*m.cols());
	var ae = a.elements;
	var klim = Math.floor(c.rows()/len)*len
	for(k=0; k<=(klim-len)/50; k++){
		var samp = c.minor(k*50, 0, len, m.cols());
		var mn = calcMean(samp);
		var sampz = subMean(samp, mn); 
		var mne = mn.elements;
		var mean = mav(sampz); // mean absolute value
		var meane = mean.elements;
		var wav = wl(sampz); // first wavelength features
		var wave=wav.elements;
		var wavtwo = wavii(sampz); // second wl features
		var wavtwoe = wavtwo.elements;
		var zeroc = zc(sampz); // zero crossings
		var zeroce = zeroc.elements;
		var rms = rootms(sampz); // rms vales
		var rmse = rms.elements;
		var slope = slope_change(sampz); // slope changes
		var slopee = slope.elements;
		for(f=0; f<m.cols(); f++){
			ae[k][f] = zeroce[f];
			ae[k][f+(1*m.cols())] = wave[f];
			ae[k][f+(2*m.cols())] = wavtwoe[f];
			ae[k][f+(3*m.cols())] = meane[f];
			ae[k][f+(4*m.cols())] = slopee[f];
			ae[k][f+(5*m.cols())] = rmse[f];
		}
		
	}
	return a
}




// processing functions
function variance(m,mean){
	var me=m.elements;
	var mlen = m.dimensions();
	var dif = Vector.Zero(mlen);
	var dife = dif.elements;
	var variance = 0;
	
	for(i = 0; i<mlen; i++){
		dife[i] = me[i] - mean;
		variance = variance + dife[i]*dife[i];
	}
	return variance
}

function calcCov(m,mean){
	var mz = subMean(m,mean); 
	//now compute the covariance matrix. 
	var n = mz.transpose(); 
	var cov = n.x(mz) ;
	var cove = cov.elements ; 
	//divide by the number of elements...
	for (i =0; i<cov.rows(); i++){
		for (j=0; j < cov.cols(); j++){
			cove[i][j] = cove[i][j] / m.rows() ; 
		}
	}
	return cov ; 
}

function calcMean(m){
	var me = m.elements ; 
	var sum = Vector.Zero(m.cols());
	var sume = sum.elements;
	for (i =0; i<m.rows(); i++){
		for (j=0; j < m.cols(); j++){
			sume[j] = sume[j] + me[i][j];
		}
	}
	for (j=0; j < m.cols(); j++){
		sume[j] = sume[j] / m.rows();
	}
	return sum;
}

function subMean(m, mean) {
	//subtract the mean from a matrix. 
	//assumes that the mean is taken along the rows.
	//not sure if javascript uses references .. ?
	var n = Matrix.Zero(m.rows(), m.cols()); 
	var me = m.elements ; 
	var ne = n.elements ; 
	var se = mean.elements; 
	for (i =0; i<m.rows(); i++){
		for (j=0; j < m.cols(); j++){
			ne[i][j] = me[i][j] - se[j] ; 
		}
	}
	return n ; 
}

// features

function mav(n){ // returns the mean absolute value of the data
	var ne = n.elements ; 
	var sumav = Vector.Zero(n.cols());
	var sumave = sumav.elements;
	for (i =0; i<n.rows(); i++){
		for (j=0; j < n.cols(); j++){
			sumave[j] = sumave[j] + Math.abs(ne[i][j]);
		}
	}
	for (j=0; j < n.cols(); j++){
		sumave[j] = sumave[j] / n.rows();
	}
	return sumav;
}

function wl(m) { // compute the waveform length
	var me = m.elements;
	var dif = Matrix.Zero(m.rows()-1, m.cols());
	var dife = dif.elements;
	var wav = Vector.Zero(m.cols());
	var wave = wav.elements;
	var length = (1/m.rows())*(1/m.rows());
	for (i =0; i<m.rows()-1; i++){
		for (j=0; j < m.cols(); j++){
			dife[i][j] = me[i+1][j] - me[i][j];
			dife[i][j] = dife[i][j]*dife[i][j];
			dife[i][j] = dife[i][j] + length;
			dife[i][j] = Math.sqrt(dife[i][j]);
			wave[j] = wave[j] + dife[i][j];
		}
	}
	
	return wav
}


function wavii(m) { // compute the waveform length
	var me = m.elements;
	var dif = Matrix.Zero(m.rows()-1, m.cols());
	var dife = dif.elements;
	var wv = Vector.Zero(m.cols());
	var wve = wv.elements;
	for (i =0; i<m.rows()-1; i++){
		for (j=0; j < m.cols(); j++){
			dife[i][j] = me[i+1][j] - me[i][j];
		}
	}
	for (j=0; j < m.cols(); j++){
		for (i =0; i<m.rows()-1; i++){
			wve[j] = wve[j] + Math.abs(dife[i][j]);
		}
	}
	return wv
}

function zc(n) { //counts the zero crossings
	var ne = n.elements ; 
	var z = Vector.Zero(n.cols());
	var ze = z.elements;
	var m = Matrix.Zero(n.rows(), n.cols());
	var me = m.elements;
	var a = Matrix.Zero(n.rows()-1, n.cols());
	var ae = a.elements;
	for (i =0; i <n.rows(); i++){
		for (j=0; j < n.cols(); j++){
			var cross = Boolean(ne[i][j] >= 0);
			me[i][j] = cross;
		}
	}
	for(i=0; i<n.rows()-1; i++){
		for(j=0; j<n.cols(); j++) {
			ae[i][j] = me[i+1][j] - me[i][j];
			ze[j] = ze[j] + Math.abs(ae[i][j])
		}
	}
	for(j=0;j<n.cols(); j++){
		ze[j] = ze[j]/n.rows();
	}
	return z
}

function slope_change(m) { // finds the number of slope sign changes
	var me = m.elements;
	var me2 = Matrix.Zero(m.rows(), m.cols());
	var me2e = me2.elements;
	var dif = Matrix.Zero(m.rows(), m.cols());
	var dife = dif.elements;
	var ssc = Vector.Zero(m.cols());
	var ssce = ssc.elements;
	var b = Matrix.Zero(m.rows()-1, m.cols());
	var be = b.elements;
	var c = Matrix.Zero(m.rows()-2, m.cols());
	var ce= c.elements;
	for(i=0; i<m.rows()-1; i++){
		for (j=0; j < m.cols(); j++){
			dife[i][j] = me[i+1][j] - me[i][j];
			var cross = Boolean(dife[i][j] >= 0 );
			be[i][j] = cross;
		}
	}
	for(i=0; i<m.rows()-2; i++){
		for(j=0; j<m.cols(); j++){
			ce[i][j] = be[i+1][j] - be[i][j];
			ssce[j] = ssce[j] + Math.abs(ce[i][j]);
		}
	}
	for(j=0; j<m.cols(); j++){
		ssce[j] = ssce[j]/m.rows();
	}
	
	return ssc
}


function rootms(n){ // calculates the root mean squared value
	var ne = n.elements ; 
	var rms = Vector.Zero(n.cols());
	var rmse = rms.elements;
	for (i =0; i<n.rows(); i++){
		for (j=0; j < n.cols(); j++){
			rmse[j] = rmse[j] + ne[i][j]*ne[i][j];
		}
	}
	for (j=0; j < n.cols(); j++){
		rmse[j] = rmse[j] / n.rows();
		rmse[j] = Math.sqrt(rmse[j]);
	}
	return rms;
}
// end of features

function printMatrix (p) {	
	var pe = p.elements ; 
	var res = "<p>matrix " + p.rows() + " by " + p.cols() + "</p>\n"; 
	res += "<table><font color=\"green\">\n"; 
	for ( i = -1; i<p.rows(); i++){
		res = res + "<tr>\n"; 
		for( j=-1; j<p.cols(); j++){
			var inner = "" ; 
			if(i < 0) { inner = "col" + j; }
			else {
				if(j < 0) { inner = "row" + i; }
				else{ inner = "" + pe[i][j]; }
			}
			res = res + "<td>" + inner + "</td>\n"; 
		}
		res = res + "</tr>\n"; 
	}
	res = res + "</font></table>\n"; 
	return res ; 
}

function printVector (p) {	
	var pe = p.elements ; 
	var res = "<p>vector " + p.dimensions() + " elements </p>\n"; 
	res += "<table><font color=\"green\">\n"; 
	for ( i = 0; i<p.dimensions(); i++){
		res = res + "<tr>\n"; 
		res = res + "<td>" + pe[i] + "</td>\n"; 
		res = res + "</tr>\n"; 
	}
	res = res + "</font></table>\n"; 
	return res ; 
}

function normalizeVec(v){
	//this works in-palce
	var k =  v.dimensions(); 
	var sum = 0.0; 
	var ve = v.elements; 
	for(i=0; i<k; i++){
		sum += ve[i] * ve[i] ; 
	}
	sum = Math.sqrt(sum); 
	for(i=0; i<k; i++){
		ve[i] = ve[i] / sum ; 
	}
}
function scaleVec(v,scl){
	var k =  v.dimensions(); 
	var ve = v.elements; 
	for(i=0; i<k; i++){
		ve[i] = ve[i]*scl ; 
	}
}



	