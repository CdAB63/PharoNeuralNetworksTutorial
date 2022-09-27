operations
configure: nbOfInputs hiddenLayers: nbOfNeuronsPerLayer nbOfOutputs: nbOfOutputs

	| inputs outputs |
	
	inputs := { nbOfInputs } asOrderedCollection.
	inputs addAll: nbOfNeuronsPerLayer.
	outputs := nbOfNeuronsPerLayer asOrderedCollection.
	outputs addAll: { nbOfOutputs }.
	
	self assert: [ inputs size = outputs size ].
	
	inputs with: outputs do: [ :i :o |
		self addLayer: (NMLayer new nbInputs: i nbOutputs: o random: self random) ]
