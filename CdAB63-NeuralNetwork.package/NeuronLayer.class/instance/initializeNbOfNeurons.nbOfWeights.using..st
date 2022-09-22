initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights using: random
	"main method to initialize a neuron layer"
	
	| weights |
	
	neurons := (1 to: nbOfNeurons) collect: [ :i |
		weights := (1 to: nbOfWeights) collect: [ :j |
			random next * 4 - 2 ].
		Neuron new sigmoid; weights: weights; bias: (random next * 4 - 2) ].
	self learningRate: 0.1