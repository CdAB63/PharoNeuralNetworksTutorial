arithmetic
sub: anotherMatrix
	"subtractr a matrix from the receiver matrix"

	| result resultArray |
	
	self nbColumns = anotherMatrix nbColumns ifFalse: [ self error: 'dimensions do not conform' ].
	self nbRows = anotherMatrix nbRows ifFalse: [ self error: 'dimensions do not conform' ].
	
	resultArray := ByteArray new: (self nbRows * self nbColumns * 8).	
	self assert: [ self nbRows * self nbColumns * 8 = resultArray size ].
	
	self sub: self getHandle with: self nbRows with: self nbColumns with: anotherMatrix getHandle in: resultArray.
	result := self class newHandle: resultArray rows: self nbRows columns: self nbColumns.
	
	^ result