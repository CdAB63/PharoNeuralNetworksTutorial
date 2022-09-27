accessing
random: aRandomGenerator
	"fill the matrix with random numbers"
	
	aRandomGenerator seed: 42.
	
	self fromContents: ((1 to: self size) collect: [ :vv | aRandomGenerator next ])