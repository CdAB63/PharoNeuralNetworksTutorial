tests
testMatrixProduct

	| m1 m2 m3 |
	
	m1 := MMatrix newFromArrays: #( #(1 2 3 4) #(5 6 7 8) ).
	m2 := MMatrix newFromArrays: #( #(1 2) #(3 4) #(5 6) #(7 8) ).
	m3 := m1 +* m2.
	self assert: m3 asStructuredArray equals: #( #(50.0 60.0) #(114.0 140.0) )