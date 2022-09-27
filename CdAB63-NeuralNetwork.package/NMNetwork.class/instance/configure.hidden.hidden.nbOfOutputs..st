operations
configure: nbOfInputs hidden: nbOfNeurons1 hidden: nbOfNeurons2 nbOfOutputs: nbOfOutputs

	"This network has two hidden layers"
	self addLayer: (NMLayer new nbInputs: nbOfInputs nbOutputs: nbOfNeurons1 random: self random).
	self addLayer: (NMLayer new nbInputs: nbOfNeurons1 nbOutputs: nbOfNeurons2 random: self random).
	self addLayer: (NMLayer new nbInputs: nbOfNeurons2 nbOutputs: nbOfOutputs random: self random).