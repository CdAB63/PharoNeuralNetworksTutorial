accessing
learningRate: aLearningRate
	"set the learning rate for all the layers (same for all)"
	layers do: [ :l |
		l learningRate: aLearningRate ]