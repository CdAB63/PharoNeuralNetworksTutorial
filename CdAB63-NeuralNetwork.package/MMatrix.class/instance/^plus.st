arithmetic
+ matrixOrVector

	| m |
	
	((self nbRows = matrixOrVector nbRows) and: [ self nbColumns = matrixOrVector nbColumns ])
		ifTrue: [ ^ self add: matrixOrVector ].
		
	matrixOrVector nbColumns ~= 1 ifTrue: [ self error: 'not a n * 1 vector' ].
	
	m := matrixOrVector stretchToColumns: self nbColumns.
	^ self + m