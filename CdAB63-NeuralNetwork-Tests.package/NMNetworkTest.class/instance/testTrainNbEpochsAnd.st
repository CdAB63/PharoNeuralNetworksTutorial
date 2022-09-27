tests
testTrainNbEpochsAnd

	| and n p |
	
	and := #( #(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1) ).	
	n := NMNetwork new.
	n configure: 2 hiddenLayers: #(4) nbOfOutputs: 2.
	n train: and nbEpochs: 7000.
	p := n predict: (MMatrix newFromVector: #(0 0)).
	self assert: p equals: 0.
	p := n predict: (MMatrix newFromVector: #(0 1)).
	self assert: p equals: 0.
	p := n predict: (MMatrix newFromVector: #(1 0)).
	self assert: p equals: 0.
	p := n predict: (MMatrix newFromVector: #(1 1)).
	self assert: p equals: 1.
