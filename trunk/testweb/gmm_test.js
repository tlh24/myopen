
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
	
	var mean = calcMean(m); 
	var cov = calcCov(m, mean); 
	var Mav = mav(m);
	var Wav = wl(m);
	var Wav2 = wl2(m);
	var zero_cross = zc(m);
	var rms = root_ms(m);
	var slope = slope_change(m); 
	
	var cs = [];
	var cs_len = m.rows() / 5 ; 
	cs[0] = cls(m,0*cs_len, 100, 50); 
	cs[1] = cls(m,1*cs_len, 100, 50); 
	cs[2] = cls(m,2*cs_len, 100, 50); 
	cs[3] = cls(m,3*cs_len, 100, 50); 
	cs[4] = cls(m,4*cs_len, 100, 50); 
	cs[5] = cls(m,5*cs_len, 100, 50); 
//	res = res + printMatrix(cov);  // prints the covariance matrix
//	res = res + printVector(mean);  // prints the means
//	res = res + printVector(Mav); // prints the mean absolute values
//	res = res + printVector(Wav); // prints the first wavelength feature
//	res = res + printVector(Wav2); // prints the second wavelength feature
//	res = res + printVector(zero_cross); // counts the number of zero crossings
//	res = res + printVector(rms); // gives the rms value
//	res = res + printVector(slope); // counts the number of slope changes
	
//	res = res + printMatrix(cs);
	
	var mm = m.minor(0,0,5000,4);
//	scatterDraw(mm.col(0), mm.col(1)); 
	//get the drop-down menu selections. 
	var node = document.getElementById("featone"); 
	g_x_feature = node.selectedIndex;
	node = document.getElementById("chanone"); 
	g_x_channel = node.selectedIndex;
	var node = document.getElementById("feattwo"); 
	g_y_feature = node.selectedIndex;
	node = document.getElementById("chantwo"); 
	g_y_channel = node.selectedIndex;
	//plot all the classes ...
	var ix = g_x_channel + g_x_feature * m.cols() ; 
	var iy = g_y_channel + g_y_feature * m.cols() ; 
	scatterDraw(cs[0].col(ix), cs[0].col(iy),"255,65,0,0.75", true);
	scatterDraw(cs[1].col(ix), cs[1].col(iy),"0,65,255,0.75", false);
	scatterDraw(cs[2].col(ix), cs[2].col(iy),"0,255,35,0.75", false);
	scatterDraw(cs[3].col(ix), cs[3].col(iy),"0,65,55,0.75", false);
	scatterDraw(cs[4].col(ix), cs[4].col(iy),"100,100,35,0.75", false);
	res = res + "<p>cs[0]:</p>"; 
	res = res + printMatrix(cs[0]); 
	res = res + "<p>cs[1]:</p>"; 
	res = res + printMatrix(cs[1]); 
	return res ; 
}

// break up into classes

function cls(m,offset,len,shift){ // make variables work with this!!!
	// len = window length, shift = window shift
	var c = m.minor(offset,0,(m.rows()/5), m.cols()); // first class which is first 1000x4 elements of 5000x4 matrix
	var a = Matrix.Zero(c.rows()/shift-1, 6*c.cols());
	var ae = a.elements;
	for(k=0; k<=c.rows()-len; k=k+shift){
		var samp = c.minor(k, 0, len, m.cols());
		var mean = mav(samp); // mean absolute value
		var meane = mean.elements;
		var wav = wl(samp); // first wavelength features
		var wave=wav.elements;
		var wav2 = wl2(samp); // second wl features
		var wav2e = wav2.elements;
		var zeroc = zc(samp); // zero crossings
		var zeroce = zeroc.elements;
		var rms = root_ms(samp); // rms vales
		var rmse = rms.elements;
		var slope = slope_change(samp); // slope changes
		var slopee = slope.elements;
		for(z=0; z<m.cols(); z++){
			ae[k/shift][z] = meane[z];
		}
		for(z=m.cols(); z<2*m.cols(); z++){
			ae[k/shift][z] = wave[z-m.cols()];
		}
		for(z=2*m.cols(); z<3*m.cols(); z++){
			ae[k/shift][z] = wav2e[z-(2*m.cols())];
		}
		for(z=3*m.cols(); z<4*m.cols(); z++){
			ae[k/shift][z] = zeroce[z-(3*m.cols())];
		}
		for(z=4*m.cols(); z<5*m.cols(); z++){
			ae[k/shift][z] = rmse[z-(4*m.cols())];
		}
		for(z=5*m.cols(); z<6*m.cols(); z++){
			ae[k/shift][z] = slopee[z-(5*m.cols())];
		}
	}
	return a
}

// processing functions

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

function gmmProb(m){
	
	var fp = Matrix.Zero(m.rows(),m.cols());
	var fpa = [];
	var f2 = Matrix.Zero(4*nfeat, (m.rows()/5));
	var f2e = f2.elements;
	var mu = Matrix.Zero(m.cols(), 5);
	var mue = mu.elements;

	for(tclass=0; tclass< 5; tclass++){
		for(k= 0; k< m.cols(); k++){
			var c = m.minor(tclass*1000,0,(m.rows()/5), m.cols()); 
			var ce = c.elements;
			var a = calcMean(c);
			var ae = a.elements
			for(f = 0; f< m.cols(); f++){
				var mean = mean + ae[f];
			}
			var sigma = calcCov(c, mean);
			var det = 12*Math.sqrt(det(sigma));
			var scl = 0.1591549431*det;
			var sigmainv = inverse(sigma);
			var mav = mav(c);
			var mave = mav.elements;
			var x = [];
			var p = [];
			for(i=0; i<m.cols(); i++){
				for(samp=0; samp< c.rows(); samp++){
					x[i]= mave[i] - mue[i];
					var xtrans = transpose(x);
					var xtranse = xtrans.elements;
					p[i] = scl * Math.exp(-0.5*xtranse[i] * sigmainv*x[i])
				}
			}
		}
	}
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
	var dif = Matrix.Zero(m.rows(), m.cols());
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


function wl2(m) { // compute the waveform length
	var me = m.elements;
	var me2 = Matrix.Zero(m.rows(), m.cols());
	var me2e = me2.elements;
	var dif = Matrix.Zero(m.rows(), m.cols());
	var dife = dif.elements;
	var wav2 = Vector.Zero(m.cols());
	var wav2e = wav2.elements;
	for (i =0; i<m.rows()-1; i++){
		for (j=0; j < m.cols(); j++){
			dife[i][j] = me[i+1][j] - me[i][j];
			wav2e[j] = wav2e[j] + Math.abs(dife[i][j]);
		}
	}
	
	return wav2
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


function root_ms(n){ // calculates the root mean squared value
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
	var res = "<table><font color=\"green\">\n"; 
	for ( i = 0; i<p.rows(); i++){
		res = res + "<tr>\n"; 
		for( j=0; j<p.cols(); j++){
			res = res + "<td>" + pe[i][j] + "</td>\n"; 
		}
		res = res + "</tr>\n"; 
	}
	res = res + "</font></table>\n"; 
	return res ; 
}

function printVector (p) {	
	var pe = p.elements ; 
	var res = "<table><font color=\"green\">\n"; 
	for ( i = 0; i<p.dimensions(); i++){
		res = res + "<tr>\n"; 
		res = res + "<td>" + pe[i] + "</td>\n"; 
		res = res + "</tr>\n"; 
	}
	res = res + "</font></table>\n"; 
	return res ; 
}




	