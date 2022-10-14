tests
testCrossover1
	| i3 |
	i3 := op crossover: i1 with: i2 midpoint: 2.
	self assert: i3 genes equals: 'abfg'