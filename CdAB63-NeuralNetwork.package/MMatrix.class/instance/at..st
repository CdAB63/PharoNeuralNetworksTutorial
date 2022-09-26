accessing
at: aPoint
	"access one element of the matrix"
	^ self array at: ((aPoint x - 1) * self nbColumns + (aPoint y - 1)) + 1