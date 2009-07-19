function cholesky(a){
	var n =a.rows();
	var el = a.dup(); //MUST NOT use = operator - need a new matrix here!
	var ele = el.elements;
	var i, j, k;
	var sum = 0;
	if(el.cols() !=n){
		alert("need square matrix");
	}else{
		for(i=0; i<n; i++){
			for(j=i; j<n; j++){
				sum = ele[i][j];
				for(k=i-1; k>=0; k--){
					sum -=ele[i][k]*ele[j][k];
				}
				if(i==j){
					if(sum <= 0.0) {
						console.log("Cholesky failed");
					}
					ele[i][i] = Math.sqrt(sum);
				} else {
					ele[j][i] = sum/ ele[i][i];
				}
			}
		}
		for(i=0; i<n; i++){
			for(j=0; j<i; j++){
				ele[j][i] = 0;
			}
		}
	}
	return el; 
}

function cholesky_invert(a){
	//using the cholesky decomposition, 
	//form the matrix inverse. 
	var n =a.rows();
	var el = cholesky(a); 
	var ele = el.elements;
	var i, j, k;
	var sum;
	var ainv = Matrix.Zero(n, n);
	var ainve = ainv.elements;
	//alert("starting cholesky inversion!"); 
	//console.log(printMatrix(a)); 
	//console.log(printMatrix(el)); 
	for(i=0; i<n; i++){
		for(j=0; j<=i; j++){
			if(i ==j){
				sum = 1;
			} else{
				sum=0;
			}for(k=i-1; k>=j; k--){
				sum -= ele[i][k] * ainve[j][k];
			}
			ainve[j][i] = sum/ele[i][i];
		}
	}
	for(i=n-1; i>=0; i--){
		for(j=0; j<=i; j++){
			if(i<j){
				sum=0;
			}else{
				sum = ainve[j][i];
			}
			for(k=i+1; k<n; k++){
				sum -= ele[k][i] * ainve[j][k];
			}
			ainve[i][j] = ainve[j][i] = sum/ele[i][i];	
		}
	}
	return ainv;
}