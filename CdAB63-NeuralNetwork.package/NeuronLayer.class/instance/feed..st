accessing
feed: someInputValues
	"feed the layer with some inputs"
	| someOutputs |
	someOutputs := neurons collect: [ :n | n feed: someInputValues ] as: Array.
	^ self isOutputLayer 
			ifTrue: [ someOutputs ]
			ifFalse: [ nextLayer feed: someOutputs ]