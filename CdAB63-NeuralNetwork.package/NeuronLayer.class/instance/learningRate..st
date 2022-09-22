accessing
learningRate: aLearningRate
	"set the learning rate for all neurons"
	self assert: [ neurons notEmpty ] description: 'learningRate: should be invoked after configuring the layer'.
	neurons do: [ :n | n learningRate: aLearningRate ]