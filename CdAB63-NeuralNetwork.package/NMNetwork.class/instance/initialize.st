initialization
initialize 

	super initialize.
	self layers: OrderedCollection new.
	self random: (Random seed: 42).