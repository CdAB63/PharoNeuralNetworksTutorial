operations
backwardPropagateError: expected
	"recursive method for backward error propagation"
	self neurons with: expected do: [ :neuron :exp |
		| theError |
		theError := exp - neuron output.
		neuron adjustDeltaWith: theError ].
	"iterate"
	self previousLayer notNil ifTrue: [ 
		self previousLayer backwardPropagateError ].
	