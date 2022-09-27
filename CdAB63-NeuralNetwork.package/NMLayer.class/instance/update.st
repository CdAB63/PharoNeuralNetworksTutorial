updating
update
	"update the weights and biases using delta value"
	
	self w: (self w - ((self delta +* self previous output transposed) * self lr / self numberOfExamples)).
	self b: (self b - (self delta sumHorizontal * self lr / self numberOfExamples)).
	self next ifNotNil: [ self next update ]