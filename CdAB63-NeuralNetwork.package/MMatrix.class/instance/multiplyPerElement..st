arithmetic
multiplyPerElement: mat
	"multiply 2 matrices elementwise"
	
	| r |
	
	self assert: [ self nbRows = mat nbRows ].
	self assert: [ self nbColumns = mat nbColumns ].
	
	r := self class newRows: self nbRows columns: self nbColumns.
	r fromContents: (self asArray with: mat array asArray collect: [:a :b | a * b ]).
	^ r