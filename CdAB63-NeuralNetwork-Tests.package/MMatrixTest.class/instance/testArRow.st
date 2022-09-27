tests
testArRow

	| m |
	m := MMatrix newFromArrays: #( #(1 2 3 4) #(5 6 7 8) #(9 10 11 12) #(13 14 15 16) ).
	self assert: (m atRow: 3) equals: #(9.0 10.0 11.0 12.0).