tests
testBasic 
	| n |
	n := NNetwork new.
	n configure: 2 hidden: 2 nbOfOutputs: 1.
	self assert: ((n feed: #(1 3)) anyOne closeTo: 0.6745388083637036 precision: 0.0000000001).
	self assert: n numberOfOutputs equals: 1