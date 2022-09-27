arithmetic
add: aMatrix

	| result resultArray |
	
	self nbColumns = aMatrix nbColumns ifFalse: [ self error: 'dimensions do not conform' ].
	self nbRows = aMatrix nbRows ifFalse: [ self error: 'dimensions do not conform' ].
	
	resultArray := ByteArray new: (self size * 8).
	self assert: [ self size = self array size ].
	self assert: [ aMatrix size = aMatrix array size ].
	self assert: [ self size * 8 = resultArray size ].
	
	self add: self getHandle with: self nbRows with: self nbColumns with: aMatrix getHandle in: resultArray.
	result := self class newHandle: resultArray rows: self nbRows columns: self nbColumns.
	^ result