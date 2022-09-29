accessing
trainX: x y: y nbOfEpochs: nbEpochs
	"Train the network with a set of inputs against the expected values"
	
	| cost output |
	
	"we need to tell each layer the number of examples they have"
	self layers do: [ :l | l numberOfExamples: y nbColumns ].
	
	self errors: OrderedCollection new.

	nbEpochs timesRepeat: [ 
		output := self feed: x.
		cost := self computeCost: output and: y.
		self backwardX: x y: y.
		self update: x.
		errors add: cost ].
	
	^ cost