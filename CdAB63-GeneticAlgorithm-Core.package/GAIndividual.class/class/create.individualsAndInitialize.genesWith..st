as yet unclassified
create: numberOfIndividuals
	individualsAndInitialize: numberOfGenes
	genesWith: geneBlockFactory
	
	^ self create: numberOfIndividuals 
			  individualsAndInitialize: numberOfGenes 
			  genesWith: geneBlockFactory 
			  using: (Random new seed: 42)