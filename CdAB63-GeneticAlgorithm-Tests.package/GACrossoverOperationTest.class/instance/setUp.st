initialization
setUp
	super setUp.
	self i1: (GAIndividual new genes: 'abcd').
	self i2: (GAIndividual new genes: 'defg').
	self op: GACrossoverOperation new.