as yet unclassified
computeFitnessUsing: fitnessBlock

	self 
		assert: [ self genes notNil ]
		description: 'Need to have some genes first'.
		
	"if fitness was already computed"
	self fitness ifNotNil: [ ^ self ].
	
	"otherwise compute fitness score"
	self fitness: (fitnessBlock value: genes)