tests
testAddition1 
	| m1 m2 res |
	m1 := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) ).
	m2 := MMatrix newFromArrays: #( #(6 5 4) #(3 2 1) ).
	res := m1 + m2.
	self assert: res asStructuredArray equals: #( #(7.0 7.0 7.0) #(7.0 7.0 7.0) )