instance creation
newArrayFromHandle: aHandle
	"create an external array using a handle"
	
	^ FFIExternalArray
			fromHandle: aHandle 
			type: 'double'
			size: self size