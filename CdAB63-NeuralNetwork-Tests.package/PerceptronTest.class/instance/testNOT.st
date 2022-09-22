tests
testNOT
	| p |
	p := self newNeuron.
	p weights: #(-1).
	p bias: 0.5.
	self assert: (p feed: #(1)) equals: 0.
	self assert: (p feed: #(0)) equals: 1.