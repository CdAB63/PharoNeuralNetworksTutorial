updating
update: input
	"update the weights and biases using the input value"
	self w: (self w - ((self delta +* input transposed) * self lr / self numberOfExamples)).
	self b: (self b - (self delta sumHorizontal * self lr) / self numberOfExamples).
	self next update.