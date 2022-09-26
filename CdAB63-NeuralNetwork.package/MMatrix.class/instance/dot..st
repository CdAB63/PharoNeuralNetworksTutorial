arithmetic
dot: anotherMatrix
	"dot product"
	
	| result resultArray |
	
	self nbColumns = anotherMatrix nbRows ifFalse: [ self error: 'dimensions do not conform' ].
	self assert: [ self nbRows * self nbColumns = self array size ].
	self assert: [ anotherMatrix nbRows * anotherMatrix nbColumns = anotherMatrix size ].
	
	resultArray := ByteArray new: (self nbRows * anotherMatrix nbColumns * 8).
	
	self dot: self getHandle with: self nbRows with: self nbColumns
	     with: anotherMatrix getHandle with: anotherMatrix nbRows with: anotherMatrix nbColumns
	     in: resultArray.
		
	result := self class newHandle: resultArray rows: self nbRows columns: anotherMatrix nbColumns.
	^ result