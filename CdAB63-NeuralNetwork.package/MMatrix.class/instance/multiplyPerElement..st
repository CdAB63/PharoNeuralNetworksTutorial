arithmetic
multiplyPerElement: aMatrixOrVector
	"multiply elementwise"
	
	| r |
	
	self assert: [ self nbRows = aMatrixOrVector nbRows ].
	self assert: [ self nbColumns = aMatrixOrVector nbColumns ].
	
	r := self class newRows: self nbRows columns: self nbColumns.
	r fromContents: (self asArray with: aMatrixOrVector array asArray collect: [ :a :b | a * b ]).
	^ r