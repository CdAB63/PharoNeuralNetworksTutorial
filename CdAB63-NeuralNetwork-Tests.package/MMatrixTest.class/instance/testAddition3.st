tests
testAddition3

	| m1 m2 |
	m1 := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) ).
	m2 := MMatrix newFromVector: #(1 2).
	self assert: (m1 + m2) asStructuredArray equals: #( #(2 3 4) #(6 7 8) ).