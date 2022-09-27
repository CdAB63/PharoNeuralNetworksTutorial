operations
backwardX: x y: y
	"back propagate the error"
	
	| lastLayer dz currentLayer |
	
	lastLayer := self layers last.
	dz := lastLayer output - y.
	lastLayer delta: dz.
	currentLayer := lastLayer previous.
	
	[ currentLayer notNil ] whileTrue: [ 
			dz := (currentLayer next w transposed +* dz)
							multiplyPerElement: (currentLayer output collect: [ :v | v * (1 - v) ]).
			currentLayer delta: dz.
			currentLayer := currentLayer previous ]