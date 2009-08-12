//gmm_test.js

function retrieveData(url, samples, callback)
{      
        poststr = "samples=" + samples ; 
        //console.log("poststr="+poststr); 
        http_request = false;
        http_request = new XMLHttpRequest(); //this will only work for mozilla and safari, but that's ok
        if (http_request.overrideMimeType) {
                http_request.overrideMimeType('text/xml');
        }
        http_request.onreadystatechange = callback; //set the callback. 
        //code that is independent of data. 
        http_request.open('POST', url, true);
        http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        http_request.setRequestHeader("Content-length", poststr.length);
        http_request.setRequestHeader("Connection", "close");
        http_request.send(poststr);
}
function retrieveDataBlock(samples){
	retrieveData("data.pl",samples, retrieveUpdate); 
}
function retrieveUpdate(){
        if (http_request.readyState == 4) {
                if (http_request.status == 200) {
                        result = http_request.responseText;
			//result is the data from myopen board!!
			//need to process it here (call math functions)
			// and return result. 
			var parse = parseData(result);
			processed = processData(parse); 
			var node = document.getElementById("-2"); 
			//var par = node.parentNode;
			//var rep = node.cloneNode(true); 
			node.innerHTML = processed;
			//rep.setAttribute("id", "-1"); //this one to be replaced!
			//par.insertBefore(rep, node);
                } else {
                        alert('There was a problem with the http request.');
                }
        }
}
var g_x_feature = 0; 
var g_x_channel = 0; 
var g_y_feature = 0; 
var g_y_channel = 0; 

function parseData(d){
	//convert string data to a matrix. 
	var mat = d.split("\n"); 
	//first line is the matrix size. 
	var header = mat[0] ; 
	//alert( "header=" + header  ); 
	var matches = header.match( /\b\d+\b/g );
	//var matches = re.exec(header); 
	var rows = parseInt(matches[0]); 
	var cols = parseInt(matches[1]); 
	console.log( "rows=" + rows + " cols=" + cols); 
	var m = Matrix.Zero(rows, cols); 
	var me = m.elements ;
	for( var r = 0; r<rows; r++ ){
		var row = mat[r + 1]; 
		var col = row.split(" ");  
		for( var c = 0; c<cols; c++ ){
			var samp = col[c] ; 
			me[r][c] = parseFloat(samp); 
		}
	}
	return m; 
}

function zscore(m) {
	//zscore a matrix along the columns, just like matlab. 
	//works in-place. 
	var rows = m.rows();
	var cols = m.cols();
	var me = m.elements ; 
	for(var c=0; c<cols; c++){
		mean = 0; 
		for(var r=0; r < rows; r++){
			mean += me[r][c] ; 
		}
		mean = mean / rows ; 
		//now calculate the variance. 
		var v = 0; 
		for(var r=0; r < rows; r++){
			v += (me[r][c] - mean) * (me[r][c] - mean) ; 
		}
		v = v / rows; 
		var std = Math.sqrt(v); 
		for(var r=0; r < rows; r++){
			me[r][c] = (me[r][c] - mean)/std ; 
		}
	}
}
function calculate_features(m, len, shift){
	//given a matrix, calculates the features
	//breaks the data in length len windows offset by shift samples. 
	//i thinks this is better than trying to push everything back together - 
	// keep the datastructures descriptive of the data.
	var rows = m.rows(); 
	var cols = m.cols(); 
	var out = Matrix.Zero(rows, cols*6); 
	var windows = Math.ceil((rows-len) / shift); //how many windowed sections of data.
	for(var k=0; k<windows; k++){
		//extract a window of the data.
		var samp = m.minor(k*shift, 0, len, cols);
		//remove the mean from this window.
		var mn = calcMean(samp);
		var sampz = subMean(samp, mn); 
		var mne = mn.elements;
		//calculate the features.
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
		for(var f=0; f<rows; f++){
			out[k][f+(0*cols)] = meane[f];
			out[k][f+(1*cols)] = wave[f];
			out[k][f+(2*cols)] = wavtwoe[f];
			out[k][f+(3*cols)] = zeroce[f];
			out[k][f+(4*cols)] = slopee[f];
			out[k][f+(5*cols)] = rmse[f];
		}
	}
}

function calculate_features(n, len, shift, classes)
{
	var rows = n[0].rows();
	var cols = n[0].cols();
	var chan = cols/6;
	var klim = Math.floor(rows/len)*len
	var a_lim = (klim)/shift;
	var a = Matrix.Zero(classes*(a_lim-1), cols);
	var ae = a.elements;
	for(var cl = 0; cl< classes; cl++){
		var m = n[cl];
		var me = m.elements;
		for(var k=0; k<=(klim-len)/shift; k++){
			//extract a window of the data.
			var samp = m.minor(k*shift, 0, len, m.cols());
			//remove the mean from this window.
			var mn = calcMean(samp);
			var sampz = subMean(samp, mn); 
			var mne = mn.elements;
			//calculate the features.
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
			for(var f=0; f<chan; f++){
				var offset = cl*(a.rows()/classes);
				ae[k+offset][f+(0*chan)] = meane[f];
				ae[k+offset][f+(1*chan)] = wave[f];
				ae[k+offset][f+(2*chan)] = wavtwoe[f];
				ae[k+offset][f+(3*chan)] = zeroce[f];
				ae[k+offset][f+(4*chan)] = slopee[f];
				ae[k+offset][f+(5*chan)] = rmse[f];
			}
		}
	}
	//finally, zscore along the features (ignoring class). 
	var z = Matrix.Zero(a.rows(), m.cols());
	var ze = z.elements;
	var mu = calcMean(a);
	var mue = mu.elements;
	var sub = subMean(a, mu);
	var z = divStd(sub);
	return z;
}
//breaks the continuous time data into classes & train / test data.
function trainData(m, classes, cols, cs_len, omit){
	var sampl = [];
	for(var cl = 0; cl<classes; cl++){
		sampl[cl] = m.minor(cl*cs_len, 0, cs_len-omit, cols); 
	}
	return sampl;
	//returns an array of matrices.
}
function testData(m, classes, cols, cs_len, omit){
	var tests = [];
	for(var cl = 0; cl < classes; cl++){
		tests[cl] = m.minor(cs_len*(cl+1)-omit, 0, omit, cols);
	}
	return tests;
}
function processData(m){
	console.log("running processData");
	// m is the raw data matrix in - usually say 3000 samples by 4 channels.
	var res = "";
	var rows = m.rows(); 
	var cols = m.cols(); 
	var classes = 4; 
	var feats = 6;
	var len = 20; var shift = len/2; //length of the windows.
	var cs_len = rows / classes; //length of the classes.
	var omit = Math.round(cs_len/4);
	//break the data into train and test data.
	var train = trainData(m, classes, cols, cs_len, omit);
	var test = testData(m, classes, cols, cs_len, omit);
	//calculate the features across the test and train data. 
	var train_feat = []
	for(var c=0; c<classes; c++){
		train_feat[c] = calculate_features(train[c]); 
		test_feat[c] = calculate_features(test[c]); 
	}
	var zs = zscore(samp, len, shift, classes);
	var zs_test = zscore(test, len, shift, classes); 
	var clen = zs.rows()/classes;
	var clen_test = zs_test.rows()/classes;
	var cs_test = [];
	var cs = [];
	console.log("finding cs_len = " + clen + " clen_test = " + clen_test);
	for(var t=0; t<classes; t++){
		cs[t] = zs.minor(t*clen, 0, clen, cols*feats);
		cs_test[t] = zs_test.minor(t*clen_test, 0,clen_test, cols*feats);
	}
	console.log("cs and cs_test found");
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
		for(var v=1; v<classes; v++){
			minx = Math.min(cs[v].col(ix).min(), minx); 
			miny = Math.min(cs[v].col(iy).min(), miny); 
			maxx = Math.max(cs[v].col(ix).max(), maxx); 
			maxy = Math.max(cs[v].col(iy).max(), maxy); 
		}
		var axes = [minx, maxx, miny, maxy]; 
		var pdf = [];
		var pdf2 = [];
		var acc = Vector.Zero(classes);
		var acce = acc.elements;

		for(var v=0; v<classes; v++){
			console.log("drawing class "+v); 
			var clear = v == 0; 
			
			console.log("drawing class " + v);
			scatterDraw(cs[v].col(ix), cs[v].col(iy),colors[v]+",0.75", clear, axes,3);
			ellipseDraw(cs[v].col(ix), cs[v].col(iy),colors[v]+",0.25", axes);
			
			var mu = calcMean(cs_test[v]);
			var sigma = calcCov(cs_test[v], mu);
			var pr = Matrix.Zero(cs_test[v].rows(), classes);
			var pre = pr.elements;
			for(vv=0; vv<classes; vv++){
				var prob = mvgaussian(mu, sigma, cs_test[vv])
				var probe = prob.elements;
				for(k=0; k<prob.dimensions(); k++){
					pre[k][vv] = probe[k];
				}
			
			}	
			pdf[v] = pr;
			acce[v] = accuracy(pdf[v], v);
		}
	}
	res = res + (acc[0]);
	return res ; 
}

// processing functions


function calcCov(m,mean){
	var mz = subMean(m,mean); 
	//now compute the covariance matrix. 
	var n = mz.transpose(); 
	var cov = n.x(mz);
	var cove = cov.elements ; 
	//divide by the number of elements...
	for (var i =0; i<cov.rows(); i++){
		for (var j=0; j < cov.cols(); j++){
			cove[i][j] = cove[i][j] / (m.rows()-1) ; 
		}
	}
	return cov ; 
}

function calcMean(m){
	var me = m.elements ; 
	var sum = Vector.Zero(m.cols());
	var sume = sum.elements;
	for (var i =0; i<m.rows(); i++){
		for (var j=0; j < m.cols(); j++){
			sume[j] = sume[j] + me[i][j];
		}
	}
	for (var j=0; j < m.cols(); j++){
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
	for (var i =0; i<m.rows(); i++){
		for (var j=0; j < m.cols(); j++){
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
	for (var i =0; i<n.rows(); i++){
		for (var j=0; j < n.cols(); j++){
			sumave[j] = sumave[j] + Math.abs(ne[i][j]);
		}
	}
	for (var j=0; j < n.cols(); j++){
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
	for (var i =0; i<m.rows()-1; i++){
		for (var j=0; j < m.cols(); j++){
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
	for (var i =0; i<m.rows()-1; i++){
		for (var j=0; j < m.cols(); j++){
			dife[i][j] = me[i+1][j] - me[i][j];
		}
	}
	for (var j=0; j < m.cols(); j++){
		for (var i =0; i<m.rows()-1; i++){
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
	for (var i =0; i <n.rows(); i++){
		for (var j=0; j < n.cols(); j++){
			var cross = Boolean(ne[i][j] >= 0);
			me[i][j] = cross;
		}
	}
	for(var i=0; i<n.rows()-1; i++){
		for(var j=0; j<n.cols(); j++) {
			ae[i][j] = me[i+1][j] - me[i][j];
			ze[j] = ze[j] + Math.abs(ae[i][j])
		}
	}
	for(var j=0;j<n.cols(); j++){
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
	for(var i=0; i<m.rows()-1; i++){
		for (var j=0; j < m.cols(); j++){
			dife[i][j] = me[i+1][j] - me[i][j];
			var cross = Boolean(dife[i][j] >= 0 );
			be[i][j] = cross;
		}
	}
	for(var i=0; i<m.rows()-2; i++){
		for(var j=0; j<m.cols(); j++){
			ce[i][j] = be[i+1][j] - be[i][j];
			ssce[j] = ssce[j] + Math.abs(ce[i][j]);
		}
	}
	for(var j=0; j<m.cols(); j++){
		ssce[j] = ssce[j]/m.rows();
	}
	
	return ssc
}


function rootms(n){ // calculates the root mean squared value
	var ne = n.elements ; 
	var rms = Vector.Zero(n.cols());
	var rmse = rms.elements;
	for (var i =0; i<n.rows(); i++){
		for (var j=0; j < n.cols(); j++){
			rmse[j] = rmse[j] + ne[i][j]*ne[i][j];
		}
	}
	for (var j=0; j < n.cols(); j++){
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
	for (var i = -1; i<p.rows(); i++){
		res = res + "<tr>\n"; 
		for( var j=-1; j<p.cols(); j++){
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
	for (var i = 0; i<p.dimensions(); i++){
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
	for(var i=0; i<k; i++){
		sum += ve[i] * ve[i] ; 
	}
	sum = Math.sqrt(sum); 
	for(var i=0; i<k; i++){
		ve[i] = ve[i] / sum ; 
	}
}
function scaleVec(v,scl){
	var k =  v.dimensions(); 
	var ve = v.elements; 
	for(var i=0; i<k; i++){
		ve[i] = ve[i]*scl ; 
	}
}



	