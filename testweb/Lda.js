function lda(samp, testData, trainClass, testClass){
	console.log("performing LDA " + "trainClass = " + trainClass + "testClass = " + testClass + "samp rows = " + samp.rows() + "samp cols = " + samp.cols());
	feats = 1
	var n = samp.rows();
	var m = samp.cols();
	var k = trainClass;
	var clen = samp.rows()/trainClass;
	var trainData = [];
	for(var t=0; t<k; t++){
		trainData[t] = samp.minor(t*clen, 0, clen, m*feats);
	}
	
	
	var k = trainClass;
	var Pphi = 1/k;
	var wg = Matrix.Zero(m, k);
	var wge = wg.elements;
	var cg = Vector.Zero(k);
	var cge = cg.elements;
	var csum = Matrix.Zero(m,m);
	var csume = csum.elements;
	var miAll = Matrix.Zero(m, k);
	var miAlle = miAll.elements;
	console.log(" train data cols = " + trainData[0].cols() + "miAll rows = " + miAll.rows());
	// compute the means and the pooled covariance matrix

	for(var cl = 0; cl<k; cl++){
		var mi = calcMean(trainData[cl]);
		miAll.setCol( mi, cl ); 
		//var submi = subMean(trainData[cl], mi);
		var c = calcCov(trainData[cl], mi);
		var ce = c.elements;
		for(var i=0; i<m; i++){
			for(var j=0; j<m; j++){
				csume[i][j] = csume[i][j] + ce[i][j]/k;
			}
		}
	}
	var Cinv = cholesky_invert(csum);
	// compute the LDA weights
	for(var cl = 0; cl<k; cl++){
		var d = mvx(Cinv, miAll.col(cl));
		wg.setCol( d, cl );
		cg[cl] = -0.5*mvv(miAll.col(cl),wg.col(cl)) + Math.log(Pphi);
	}
	// compute the decision function
	
/*	var atr = [];
	for(var cl = 0; cl<k; cl++){
		atr[cl] = mxx(trainData[cl], wg); 
	}
*/
	var ate = mxx(wg,testData);
	var atee = ate.elements;
	for(var i=0; i<m; i++){
		for(var j=0; j<k; j++){
			atee[i][j] = atee[i][j] + cg[j];
		}
		
	}

	// find accuracy
	var compet = Matrix.Zero(m, k);
	var compete = compet.elements;
	for(var i =0; i<m; i++){
		var v = atee[i][testClass];
		var y = testClass;
		for(var j = 0; j<k; j++){
			if(atee[i][j] > v){
				v = atee[i][j];
				y = j;
			} 
		}
		compete[i][y] = 1;
	}
	
	var sum = Vector.Zero(k);
	var sume = sum.elements;
	for(var j = 0; j<k; j++){
		for(var i =0; i<m; i++){
			sume[j] = sume[j] + compete[i][j];
		}
	}	
	var acc = sume[testClass]/m;

	return ate
}