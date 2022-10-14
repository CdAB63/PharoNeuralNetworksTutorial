tests
testCrossover2
	| i3 |
	i3 := op crossover: i1 with: i2 midpoint: 1.
	self assert: i3 genes equals: 'aefg'