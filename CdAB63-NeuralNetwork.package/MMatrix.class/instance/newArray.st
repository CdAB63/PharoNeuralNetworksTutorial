initialization
newArray
	"create an array uset to contain the matrix content"
	
	^ FFIExternalArray 
			newType: 'double'
			size: self size