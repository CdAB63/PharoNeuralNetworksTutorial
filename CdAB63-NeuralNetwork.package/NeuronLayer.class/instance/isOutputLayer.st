accessing
isOutputLayer
	"checks if the layer is an output layer (last layer in network)"
	
	^ self nextLayer isNil