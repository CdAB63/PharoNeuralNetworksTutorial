tests
testNOR
	| p |
	p := self newNeuron.
	p weights: #(-1 -1).
	p bias: 0.5.
	self assert: (p feed: #(0 0)) equals: 1.
	self assert: (p feed: #(0 1)) equals: 0.
	self assert: (p feed: #(1 0)) equals: 0.
	self assert: (p feed: #(1 1)) equals: 0.