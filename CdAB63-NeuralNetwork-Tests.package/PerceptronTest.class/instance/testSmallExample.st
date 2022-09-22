instance creation
testSmallExample 
	| p result |
	p := self newNeuron.
	p weights: #(1 2).
	p bias: -2.
	result := p feed: #(5 2).
	self assert: result equals: 1.