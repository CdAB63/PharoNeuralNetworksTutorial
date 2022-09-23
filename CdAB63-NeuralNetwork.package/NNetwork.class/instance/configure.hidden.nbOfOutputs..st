operations
configure: nbOfInputs hidden: nbOfNeurons nbOfOutputs: nbOfOutputs
	"configure a network with a hidden layer"
	
	| random |
	
	random := Random seed: 42.
	
	self addLayer: (NeuronLayer new initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfInputs using: random).
	self addLayer: (NeuronLayer new initializeNbOfNeurons: nbOfOutputs nbOfWeights: nbOfNeurons using: random).