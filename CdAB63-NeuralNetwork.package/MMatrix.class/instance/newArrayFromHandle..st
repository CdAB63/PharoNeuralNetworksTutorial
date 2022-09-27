initialization
newArrayFromHandle: aHandle

	^ FFIExternalArray fromHandle: aHandle type: 'double' size: self size