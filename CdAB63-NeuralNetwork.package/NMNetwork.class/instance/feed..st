operations
feed: inputs
	"feed the network with inputs"
	
	| mat |
	
	mat := inputs.
	self layers do: [ :l | mat := l feed: mat ].
	^ mat