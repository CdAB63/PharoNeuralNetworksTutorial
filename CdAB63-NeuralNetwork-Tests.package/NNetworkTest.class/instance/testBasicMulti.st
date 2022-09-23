tests
testBasicMulti
	| n result |
	n := NNetwork new.
	n configure: 2 theLayers: #(2 3 2) nbOfOutputs: 1.
	result := n feed: #(1 3).
	self assert: (result anyOne closeTo: 0.19999439571886393 precision: 0.0000000001).
	self assert: n numberOfOutputs equals: 1