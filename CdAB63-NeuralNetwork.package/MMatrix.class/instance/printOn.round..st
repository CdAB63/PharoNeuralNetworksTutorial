printing
printOn: aStream round: nbDecimals

	aStream nextPutAll: '('; lf.
	(1 to: nbRows) do: [ :r |
		aStream nextPutAll: '  ( '.
		(self atRow: r) do: [ :each |
			aStream nextPutAll: (each round: nbDecimals) printString ] separatedBy: [ aStream space ].
		aStream nextPutAll: ' )' ] separatedBy: [ aStream lf ].
	aStream lf; nextPutAll: ')'.