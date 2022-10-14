as yet unclassified
mutate: individual
	"return a new individual result of a mutation from the individual provide as argument"
	
	| newIndividual |
	
	newIndividual := GAIndividual new.
	newIndividual random: self random.
	newIndividual genes: individual genes copy.
	self doMutate: newIndividual.
	^ newIndividual