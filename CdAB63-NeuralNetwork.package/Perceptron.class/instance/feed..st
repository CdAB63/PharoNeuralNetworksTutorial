operations
feed: inputs
	"set input values that will be multiplicated by weights"
	| z |
	z := (inputs with: weights collect: [ :x :w | x * w]) sum + bias.
	^ z > 0
			ifTrue: [ 1 ]
			ifFalse: [ 0 ]