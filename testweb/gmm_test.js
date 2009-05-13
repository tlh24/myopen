


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

function processData(d){
	var res = " "; //what is to be returned.
	var mat = d.split("\n"); 
	//first line is the matrix size. 
	var header = mat[0] ; 
	//alert( "header=" + header); 
	var matches = header.match( /\b\d+\b/g );
	//var matches = re.exec(header); 
	var rows = parseInt(matches[0]); 
	var cols = parseInt(matches[1]); 
	alert( "rows=" + rows + " cols=" + cols); 
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
	res = res + printMatrix(cov); 
	res = res + printVector(mean); 
	
	return res ; 
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

/*
// creates a zeros matrix 
f.zerochannel: function (n, m) {
	var els = [], ni = n, i, nj, j;
		do { i = n - ni;
		els[i] = [];
		nj = m;
		do { j = m - nj;
		els[i][j] = 0;
		} 
	while (--nj);
	} 
	while (--ni);
	return Matrix.create(els);
}; // have (78*4)*9 of these matricies

var nfeat = feats.length

var n = 4
var m = nfeat

// indexes the data into a matrix

data2: function(data) {
var i elements = data.elements || data;
if (typeof(elements[0][0])!= 'undefined'){
  var ni = elements.length, ki = ni, nj, kj, j;
  this.elements = [];
do { i = ki - ni;
 nj = elements[i].length; kj = nj;
        this.elements[i] = [];
        do { j = kj - nj;
          this.elements[i][j] = elements[i][j];	
        } while (--nj);
      } while(--ni);
      return this;
    }		// need to resize matrix so it is (1024*5) x 9 
    var n = elements.length, k = n; // need 4x4 of these matricies
    this.elements = [];
    do { i = k - n;
      this.elements.push([elements[i]]);
    } while (--n);
    return this;
  }
};


var class 
for (class = 1; class<= 9; class = class++); {
	
*/