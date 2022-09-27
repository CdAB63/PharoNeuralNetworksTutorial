arithmetic
+ matrixOrVector

	| m |
	
	"if it's a matrix m * n"
	((self nbRows = matrixOrVector nbRows) and: [ self nbColumns = matrixOrVector nbColumns ])
		ifTrue: [ ^ self add: matrixOrVector ].
	
	"if it's a vector n * 1"	
	matrixOrVector nbColumns ~= 1 ifTrue: [ self error: 'not a n * 1 vector' ].
	m := matrixOrVector stretchToColumns: self nbColumns.
	^ self + m