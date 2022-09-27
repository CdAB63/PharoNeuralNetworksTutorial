tests
testDot
	| m1 m2 res |
	
	m1 := MMatrix newFromArrays: #( #(1 2 3 4) #(5 6 7 8) ).
	m2 := MMatrix newFromArrays: #( #(1 2) #(3 4) #(5 6) #(7 8) ).
	res := m1 +* m2.
	self assert: res asStructuredArray equals: #( #(50.0 60.0) #(114.0 140.0) )