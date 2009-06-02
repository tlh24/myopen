function cholesky(a){
	var n =a.rows();
	var el = a;
	var ele = el.elements;
	var i, j, k;
	//var temp = Vector.Zero(n);
	//var tempe = temp.elements;
	var sum;
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
						alert("Cholesky failed");
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