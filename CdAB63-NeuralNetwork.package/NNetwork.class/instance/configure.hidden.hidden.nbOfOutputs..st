operations
configure: nbOfInputs hidden: nbOfNeurons1 hidden: nbOfNeurons2 nbOfOutputs: nbOfOutputs
	"configure a network with a hidden layer"
	
	| random |
	
	random := Random seed: 42.
	
	self addLayer: (NeuronLayer new initializeNbOfNeurons: nbOfNeurons1 nbOfWeights: nbOfInputs using: random).
	self addLayer: (NeuronLayer new initializeNbOfNeurons: nbOfNeurons2 nbOfWeights: nbOfNeurons1 using: random).
	self addLayer: (NeuronLayer new initializeNbOfNeurons: nbOfOutputs nbOfWeights: nbOfNeurons2 using: random)