operations
backwardPropagateError
	"recursive method starting at the output layer"
	self neurons doWithIndex: [ :neuron :index |
		| theError |
		theError := 0.0.
		self nextLayer neurons do: [ :nextNeuron |
			theError := theError + ((nextNeuron weights at: index) * nextNeuron delta) ].
		neuron adjustDeltaWith: theError ].
	self previousLayer notNil ifTrue: [ 
		self previousLayer backwardPropagateError ]