arithmetic
sub: anotherMatrix

	| result resultArray |
	
	self nbColumns = anotherMatrix nbColumns ifFalse: [ self error: 'dimensions do not conform' ].
	self nbRows = anotherMatrix nbRows ifFalse: [ self error: 'dimensions do not conform' ].
	self assert: [ self size = self array size ].
	self assert: [ anotherMatrix size = anotherMatrix array size ].
	
	resultArray := ByteArray new: (self size * 8).
	self assert: [ self size * 8 = resultArray size ].
	
	self sub: self getHandle 
			with: self nbRows 
			with: self nbColumns
			with: anotherMatrix getHandle 
			in: resultArray.
			
	result := self class newHandle: resultArray rows: self nbRows columns: self nbColumns.
	^ result