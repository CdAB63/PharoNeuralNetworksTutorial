accessing
at: aPoint put: aValue
	"modify the content of one position in the matrix"
	
	self array at: ((aPoint x - 1) * self nbColumns + (aPoint y - 1)) + 1 put: aValue asFloat