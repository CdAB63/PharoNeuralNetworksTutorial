operations
configure: nbOfInputs hidden: nbOfNeurons nbOfOutputs: nbOfOutputs

	"This network has only one hidden layer"
	self addLayer: (NMLayer new nbInputs: nbOfInputs nbOutputs: nbOfNeurons random: self random).
	self addLayer: (NMLayer new nbInputs: nbOfNeurons nbOutputs: nbOfOutputs random: self random).