accessing
lr: aLearningRate
	"globally set the learning rate"
	
	self layers do: [ :l | l lr: aLearningRate ]