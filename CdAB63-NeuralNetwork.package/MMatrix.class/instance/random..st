accessing
random: randomNumberGenerator
	"fill the matrix with random values"
	
	self fromContents: ((1 to: self nbRows * self nbColumns) collect: [ :vv | randomNumberGenerator next ])