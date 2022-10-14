as yet unclassified
crossover: partnerA with: partnerB
	"return a new child that is the result of mixing it with the argument"
	
	^ self crossover: partnerA with: partnerB midpoint: (self pickCutPointFor: partnerA)