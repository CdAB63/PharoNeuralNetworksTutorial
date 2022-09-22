operations
train: inputs desiredOutput: desiredOutput
	"Train the perceptron"
	
	| theError output newWeight |
	
	output := self feed: inputs.
	theError := desiredOutput - output.
	inputs withIndexDo: [ :anInput :index |
		newWeight := (self weights at: index) + (self learningRate * theError * anInput).
		self weights at: index put: newWeight ].
	self bias: self bias + (self learningRate * theError)