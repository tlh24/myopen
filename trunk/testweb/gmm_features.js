
function accuracy(real, test, channel){
	// input is a matrix containing a class of data with each feature for a single channel
	var teste = test.elements;
	var reale = real.elements;
	var t = Matrix.Zero(test.rows(), 6);
	var te = t.elements;
	for(j=0; j<t.cols(); j++){
		for(i=0; i<t.rows(); i++){
			te[i][j] = teste[i][channel + 4*j];
		}
	}
	var r = Matrix.Zero(real.rows(), 6);
	var re = r.elements;
	for(j=0; j<r.cols(); j++){
		for(i=0; i<r.rows(); i++){
			re[i][j] = reale[i][channel + 4*j];
		}
	}
	var m = Matrix.Zero(t.rows(),2);
	var me = m.elements;
	var x = Matrix.Zero(r.rows(), r.cols());
	var xe = x.elements;
	var xsum = Vector.Zero(2);
	var xsume = xsum.elements;
	var fp = 0
	var fpe = fp.elements;
	var s = Vector.Zero(2);
	var se = s.elements;
	var mu = calcMean(test);
	var mue = mu.elements;
	var sigma = calcCov(test, mu);
	/*
	for(f = 0; f<t.cols(); f++){
		for(f2 = 0; f2<t.cols(); f2++){
			for(i=0; i<t.rows(); i++){
				if(f == f2){
				}
				else{
				me[i][0] = te[i][f];
				me[i][1] = te[i][f2];}
			}
			var mu = calcMean(m);
			var mue = mu.elements;
			var sigma = calcCov(m, mu);

			var detsigma = sigma.determinant();
			var scl = 1/((2*Math.PI)^(12*Math.sqrt(sigma.determinant())));
			var sigmainv = sigma.inverse();
			var sigmainve = sigma.elements;
			for(i=0; i<r.rows(); i++){
				xe[i][0] = re[i][f] - mue[0];
				xe[i][1] = re[i][f2] - mue[1];
				xsume[0] = xsume[0] + xe[i][0];
				xsume[1] = xsume[1] + xe[i][1];
			}
			
			for(a=0; a<2; a++){
				se[a] = xsume[0]*sigmainve[0][a] + xsume[1]*sigmainve[1][a];
			}
			var c = se[0]*xsume[0] + se[1]*xsume[1];
		
			var p = scl*Math.exp(-0.5*c);
			fp = fp + p; 
		}
	}
	*/
	return sigma

}

function cls_test(m,offset,len,shift){ // make variables work with this!!!
	// len = window length, shift = window shift
	var cl_num = 9;
	var cl_len = m.rows()/cl_num;
	var data = m.minor(offset+cl_len-200,0,200, m.cols()); 
	var a_len = Math.round((data.rows()/shift)-1);
	var a = Matrix.Zero(a_len, 6*m.cols());
	var ae = a.elements;
	var klim = Math.floor(data.rows()/len)*len
	for(k=0; k<=(klim-len)/50; k++){
		var samp = data.minor(k*50, 0, len, m.cols());
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

