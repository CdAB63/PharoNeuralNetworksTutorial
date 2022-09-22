operations
train: inputs desiredOutput: desiredOutput
	| diff output delta |
	
	output := self feed: inputs.
	diff := desiredOutput - output.
	delta := diff * (self activationFunction derivative: output).
	
	inputs withIndexDo: [ :anInput :index |
		self weights at: index put: ((self weights at: index) + (self learningRate * delta * anInput)) ].
	
	self bias: self bias + (self learningRate * delta)