initialization
initialize 
	
	super initialize.
	self learningRate: 0.1.
	self activationFunction: SigmoidAF new.