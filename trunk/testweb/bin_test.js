// for now draw data from Matlab file databin.txt

var src = "datafull.bin";
function getBinaryData(){
	BinaryAjax(
		src,
		function(oHTTP) {
			var oFile = oHTTP.binaryResponse ; 
			var rows = oFile.getSLongAt(0,false) ; 
			var cols = oFile.getSLongAt(4,false) ; 
			var m = Matrix.Zero(rows, cols); 
			var me = m.elements ; 
			console.log("matrix size: "+rows+"x"+cols+"\n"); 
			var offset = 8; 
			for(var c=0; c<cols; c++){
				for(var r=0; r<rows; r++){
					me[r][c] = oFile.getSShortAt(offset); 
					offset += 2; //sizeof(short)
				}
			}
			var process = processData(m);
			console.log("process found");
			//var node = document.getElementById("-2"); 
			//node.innerHTML = printMatrix(m);
			return m;
		}
	)	
}





