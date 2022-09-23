operations
configure: nbOfInputs theLayers: layersWeights nbOfOutputs: nbOfOutputs

	"configure a multi layer network"

	| random layerInput nbOfLayers |
	random := Random seed: 42.
	nbOfLayers := layersWeights size.
	"add enumerated layers"
	layersWeights doWithIndex: [ :layer :index |
		layerInput := index == 1 
									ifTrue: [ nbOfInputs ]
									ifFalse: [ layersWeights at: (index - 1) ].
		self addLayer: (NeuronLayer new
										initializeNbOfNeurons: layer
										nbOfWeights: layerInput
										using: random) ].
	"add output layer"
	self addLayer: (NeuronLayer new
									initializeNbOfNeurons: nbOfOutputs
									nbOfWeights: layersWeights last
									using: random)