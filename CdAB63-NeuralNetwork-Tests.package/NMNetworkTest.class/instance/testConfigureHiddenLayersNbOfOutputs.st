tests
testConfigureHiddenLayersNbOfOutputs

	| nn n1 o1 n3 o3 |
	
	nn := NMNetwork new configure: 3 hiddenLayers: #(3 5 4) nbOfOutputs: 2; yourself.
	n1 := (nn layers at: 1) w size.
	o1 := (nn layers at: 1) b size.
	n3 := (nn layers at: 3) w size.
	o3 := (nn layers at: 3) b size.
	self assert: nn layers size equals: 4.
	self assert: n1 equals: 9.
	self assert: o1 equals: 3.
	self assert: n3 equals: 20.
	self assert: o3 equals: 4.