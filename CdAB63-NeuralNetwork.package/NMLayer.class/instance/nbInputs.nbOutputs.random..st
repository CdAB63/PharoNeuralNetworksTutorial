initialization
nbInputs: nbOfInputs nbOutputs: nbOfOutputs random: random
	"initialize the layer"
	
	self w: (MMatrix newRows: nbOfOutputs columns: nbOfInputs).
	w random: random.
	self b: (MMatrix newRows: nbOfOutputs columns: 1).
	b random: random.