as yet unclassified
create: numberOfIndividuals 
	individualsAndInitialize: numberOfGenes 
	genesWith: geneBlockFactory
	using: randomNumberGeneration

	| someIndividuals ind |
	
	someIndividuals := OrderedCollection new.
	
	numberOfIndividuals timesRepeat: [ 
		ind := self new.
		ind random: randomNumberGeneration.
		ind set: numberOfGenes genesUsing: geneBlockFactory.
		someIndividuals add: ind ].
	
	^ someIndividuals

	