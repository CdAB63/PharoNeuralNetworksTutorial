accessing
checkForGeneFactory
	self
		assert: [ self geneFactoryBlock notNil ]
		description: 'Need to provide a block to create gene'