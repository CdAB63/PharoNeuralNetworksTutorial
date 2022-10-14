tests
testCrossover3
	| i3 |
	i3 := op crossover: i1 with: i2 midpoint: 0.
	self assert: i3 genes equals: 'defg'