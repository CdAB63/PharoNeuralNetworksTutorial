adding
addLayer: aLayer
	"add a layer to the network"
	
	layers ifNotEmpty: [ 
		self layers last next: aLayer.
		aLayer previous: self layers last ].
	
	self layers add: aLayer