tests
testTrainNbEpochsXor

	| xor n |
	
	xor := #(#(0 0 0) #(0 1 1) #(1 0 1) #(1 1 0)).
	
	n := NMNetwork new.
	n configure: 2 hiddenLayers: #(4) nbOfOutputs: 2.
	n train: xor nbEpochs: 7000.
	self assert: (n predict: (MMatrix newFromVector: #(0 0))) equals: 0.
	self assert: (n predict: (MMatrix newFromVector: #(0 1))) equals: 1.
	self assert: (n predict: (MMatrix newFromVector: #(1 0))) equals: 1.
	self assert: (n predict: (MMatrix newFromVector: #(1 1))) equals: 0.