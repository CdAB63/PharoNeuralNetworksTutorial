converting
asStructuredArray
	"return the contents of the matrix as an structured array"
	
	^ (1 to: self nbRows) collect: [ :i | self atRow: i ] as: Array