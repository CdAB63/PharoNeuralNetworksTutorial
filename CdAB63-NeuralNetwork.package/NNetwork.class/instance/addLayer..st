adding
addLayer: aNeuronLayer
	"Add a layer to the network"
	
	self layers ifNotEmpty: [ 
		aNeuronLayer previousLayer: self layers last.
		self layers last nextLayer: aNeuronLayer ].
	
	self layers add: aNeuronLayer