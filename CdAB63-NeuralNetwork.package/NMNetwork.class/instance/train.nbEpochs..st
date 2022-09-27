updating
train: data nbEpochs: nbEpochs
	"data provided as a collection of arrays"
	
	| x y labels numberOfOutputs |
	
	x := (MMatrix newFromArrays: (data collect: #allButLast)) transposed.
	self layers do: [ :l | l numberOfExamples: data size ].
	labels := data collect: #last.
	numberOfOutputs := labels asSet size.
	labels := labels collect: [ :row |
		| expectedOutput |
		expectedOutput := Array new: numberOfOutputs withAll: 0.
		expectedOutput at: row + 1 put: 1.
		expectedOutput ].
	y := (MMatrix newFromArrays: labels) transposed.
	^ self trainX: x y: y nbOfEpochs: nbEpochs