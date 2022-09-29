tests
testTrainNbEpochsOr

	| or n |
	
	or  := #(#(0 0 0) #(0 1 1) #(1 0 1) #(1 1 1)).
	n := NMNetwork new.
	n configure: 2 hiddenLayers: #(4) nbOfOutputs: 2.
	n train: or nbEpochs: 7000.
	self assert: ((n predict: (MMatrix newFromVector: #(0 0))) at: 1) equals: 0.
	self assert: ((n predict: (MMatrix newFromVector: #(0 1))) at: 1) equals: 1.
	self assert: ((n predict: (MMatrix newFromVector: #(1 0))) at: 1) equals: 1.
	self assert: ((n predict: (MMatrix newFromVector: #(1 1))) at: 1) equals: 1.
