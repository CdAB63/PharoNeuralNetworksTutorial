tests
testAddition1

	| m1 m2 |
	m1 := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) ).
	m2 := MMatrix newFromArrays: #( #(3 2 1) #(6 5 4) ).
	self assert: (m1 + m2) asStructuredArray equals: #( #(4.0 4.0 4.0) #(10.0 10.0 10.0) ).