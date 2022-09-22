tests
testTrainingNOT
	| p |
	p := Neuron new.
	p weights: { -1 }.
	p bias: 2.
	
	5000 timesRepeat: [ 
		p train: #(0) desiredOutput: 1.
		p train: #(1) desiredOutput: 0 ].
	
	self assert: ((p feed: #(0)) closeTo: 1 precision: 0.1).
	self assert: ((p feed: #(1)) closeTo: 0 precision: 0.1).