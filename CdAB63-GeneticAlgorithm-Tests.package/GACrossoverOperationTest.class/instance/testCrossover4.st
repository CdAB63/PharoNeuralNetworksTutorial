tests
testCrossover4
	| i3 |
	op random: (Random seed: 42).
	i3 := op crossover: i1 with: i2.
	self assert: i3 genes equals: 'aefg'