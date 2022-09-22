tests
testWrongFeeding
	| p |
	p := self newNeuron.
	p weights: #( 1 ).
	p bias: 0.5.
	
	self should: [ p feed: #(1 1) ] raise: Error