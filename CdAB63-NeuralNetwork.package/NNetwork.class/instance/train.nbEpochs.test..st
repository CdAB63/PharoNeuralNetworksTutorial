operations
train: trainData nbEpochs: nbEpochs test: testData
	"train using a dataset"
	
	| sumError outputs expectedOutput epochPrecision train test t |
	
	"Shuffle and normalize train data"
	train := Normalization new normalizeData: (trainData shuffleBy: (Random seed: 42)).
	"normalize test data"
	test := Normalization new normalizeData: testData.
	
	1 to: nbEpochs do: [ :epoch |
		sumError := 0.
		epochPrecision := 0.
		train do: [ :row |
			outputs := self feed: row allButLast.
			expectedOutput := (1 to: self numberOfOutputs) collect: [ :notUsed | 0 ].
			expectedOutput at: (row last) + 1 put: 1.
			(row last = (self predict: row allButLast)) ifTrue: [ epochPrecision := epochPrecision + 1 ].
			t := (1 to: expectedOutput size) collect: [ :i | ((expectedOutput at: i) - (outputs at: i)) squared ].
			sumError := sumError + t sum.
			self backwardPropagateError: expectedOutput.
			self updateWeight: row allButLast ].
		errors add: sumError.
		precisions add: (epochPrecision / train size) asFloat.
		accuracy add: (self test: test) ]