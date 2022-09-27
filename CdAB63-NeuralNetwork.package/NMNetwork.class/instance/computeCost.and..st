operations
computeCost: v1 and: v2
	"compute the cost function for two provided vectors"
	
	^ ((v1 - v2) collect: [ :v | v * v ]) sum