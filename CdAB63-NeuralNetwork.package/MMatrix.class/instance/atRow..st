converting
atRow: rowNumber

	(rowNumber between: 1 and: self nbRows) ifFalse: [ self error: 'index out of range' ].
	^ (1 to: self nbColumns) collect: [  :x | self at: rowNumber @ x ]