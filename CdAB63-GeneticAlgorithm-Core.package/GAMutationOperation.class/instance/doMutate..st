as yet unclassified
doMutate: individual
	"mutate genes of the argument"
	self checkForRandomNumber.
	self checkForGeneFactory.
	1 to: individual genes size do: [ :index |
		self randomNumber <= self mutationRate
			ifTrue: [ individual genes at: index put:
							( geneFactoryBlock cull: random cull: index cull: individual) ] ]