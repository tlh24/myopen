function mvgaussian(mean, sigma, x){
	// x is a matrix for which we want to calculate the probability of each row. 
	// (time is along the rows, feature along columns)
	console.log("performing gaussian");
	var sigmainv = cholesky_invert(sigma); 
	var det = Math.sqrt(sigma.determinant()); 
	var pi = Math.PI ; 
	var n = sigma.cols(); 
	var scl =  1/((Math.pow((2*pi), (n/2))) *det) ; 
	var sclLog = -1*(Math.log(2*pi)*(n/2) + Math.log(det*det/2));
	//log_matrix(sigmainv); 
	var s = x.rows(); 
	var xe = x.elements ; 
	var f = Vector.Zero(s); 
	var fe = f.elements ; 
	var subx = subMean(x, mean);
	for(i=0; i< s; i++){
		var xx = subx.row(i);
		var e =-.5*mvv(xx,(mvx(sigmainv,xx))); 
		//console.log("row=" + vector_to_string(xx) + " sum=" + sum + "\n"); 
		fe[i] = sclLog+(e);
	}
	return f ; 
}

function mvx(mtx,vec){
	//multiply m * v (v on the right, a column vector). 
	var mtxe = mtx.elements;
	var vece = vec.elements;
	var n = mtx.cols(); 
	var p = mtx.rows();
	var r = Vector.Zero(p); 
	var re = r.elements;
	var i, j; 
	for(i=0; i<p; i++){
		var sum = 0
		for(j=0; j<n; j++){
			sum += mtxe[j][i] * vece[j];
		}
		re[i] = sum;
	}
	return r;
}

function mvv(v1, v2){
	var v1e = v1.elements;
	var v2e = v2.elements;
	var sum = 0;
	var n = v1.dimensions();
	var i; 
	for(i=0; i < n; i++){
		sum += v1e[i]*v2e[i];
	}	
	return sum;
}

function mxx(m1, m2){
	var m1e = m1.elements;
	var m2e = m2.elements;
	var r = Matrix.Zero(m1.rows(), m1.rows());
	var re = r.elements;
	var v = Vector.Zero(m1.cols());
	var ve = v.elements;
	for(i=0; i<m1.rows(); i++){
		for(j=0; j<m2.rows(); j++){
			ve[j] = m2e[j][i];
		}
		var p = mvx(m1, v);
		var pe = p.elements;
		for(k=0; k<m1.rows(); k++){
			re[i][k] = pe[k];
		}
	}
	return r;
		
		
}
function log_matrix(x){
	var m = x.rows(); 
	var n = x.cols(); 
	console.log("matrix, " + m + " by " + n + "["); 
	for(var r=0; r<m; r++){
		var s = "["; 
		for(var c=0; c<n; c++){
			s += x.elements[r][c] ; 
			s += "," ;
		}
		console.log(s + "]"); 
	}
	console.log("]"); 
}
function vector_to_string(x){
	var m = x.dimensions(); 
	var s = "["; 
	for(var c=0; c< m; c++){
		s += x.elements[c]; 
		if( c < m-1){
			s += ","; 
		}
	}
	s += "]"; 
	return s; 
}

function accuracy(m, cl){
	var n= m.rows();
	var c = m.cols();
	var me = m.elements;
	if(n == 0) {
		return 0;
	}
	else {
		var count = n;
		for(i=0; i < n; i++){
			var m = me[i][cl]; 
			for(j=0; j<c; j++){
				if(m<me[i][j]){
					count = count - 1;
				}
			}
		}
	}
	var acc = count/n;
	return acc;
}

function zscore(m, len, shift, classes){
	console.log("performing zscore");
	var me = m.elements;
	var rows = m.rows();
	var cols = m.cols();
	var chan = cols/6;
	var klim = Math.floor(rows/len)*len
	var a_lim = klim/shift;
	var a = Matrix.Zero(a_lim, cols);
	var ae = a.elements;
	
	for(k=0; k<=(klim-len)/shift; k++){
		var samp = m.minor(k*shift, 0, len, m.cols());
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
		for(f=0; f<chan; f++){
			ae[k][f+(0*chan)] = meane[f];
			ae[k][f+(1*chan)] = wave[f];
			ae[k][f+(2*chan)] = wavtwoe[f];
			ae[k][f+(3*chan)] = zeroce[f];
			ae[k][f+(4*chan)] = slopee[f];
			ae[k][f+(5*chan)] = rmse[f];
		}
		
	}
	var z = Matrix.Zero(rows, m.cols());
	var ze = z.elements;
	var mu = calcMean(a);
	var mue = mu.elements;
	var sub = subMean(a, mu);
	var zz = divStd(sub, mu);
	return zz
}

function divStd(m, mean){
	var me = m.elements;
	var meane = mean.elements;
	var v = Vector.Zero(m.cols());
	var ve = v.elements;
	var dif = Matrix.Zero(m.rows(), m.cols());
	var dife = dif.elements;
	var z = Matrix.Zero(m.rows(), m.cols());
	var ze = z.elements;
	for(j = 0; j<m.cols(); j++){
		for(i=0; i<m.rows(); i++){
			dife[i][j] = Math.abs(me[i][j] - meane[j]);
			ve[j] = ve[j] + dife[i][j]*dife[i][j];
		}
		ve[j] = Math.sqrt(ve[j]);
		for(r = 0; r<m.rows(); r++){
			ze[r][j] = me[r][j]/ve[j];
		}
	}
	return z
}