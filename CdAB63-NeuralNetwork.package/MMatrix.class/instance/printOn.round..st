printing
printOn: aStream round: nbDecimals
	"print the matrix in the stream with nbDecimals decimal digits"
	
	aStream nextPutAll: '('; lf.
	(1 to: self nbRows) do: [ :r |
		aStream nextPutAll: '  ( '.
		(self atRow: r) do: [ :each |
			aStream nextPutAll: (each round: nbDecimals) printString ] separatedBy: [ aStream space ].
		aStream nextPutAll: ' )'; lf ].
	aStream nextPutAll: ')'; lf.