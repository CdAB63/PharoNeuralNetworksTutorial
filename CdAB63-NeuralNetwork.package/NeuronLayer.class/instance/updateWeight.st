operations
updateWeight
	"update the weights of theneuron on the set of initial input"
	| inputs |
	inputs := self previousLayer neurons collect: #output.
	self updateWeight: inputs