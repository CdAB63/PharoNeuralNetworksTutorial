initialization
feed: inputMatrix
	"feed the layer with the input matrix"
	self output: ((self w +* inputMatrix + self b) collect: [ :v | 1 / (1 + v negated exp) ]).
	^ self output