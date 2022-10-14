as yet unclassified
crossover: partnerA with: partnerB midpoint: midpoint
	"return a new child that is the result of mixing it with the argument"
	
	| child crossOverGenes |
	
	child := GAIndividual new.
	child random: random.
	crossOverGenes := (partnerA genes first: midpoint), (partnerB genes allButFirst: midpoint).
	child genes: crossOverGenes.
	^ child