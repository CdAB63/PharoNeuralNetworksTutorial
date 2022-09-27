tests
testSub

	| m1 m2 res |
	
	m1 := MMatrix newFromArrays: #( #(1 2 3 4) #(5 6 7 8) ).
	m2 := MMatrix newFromArrays: #( #(4 2 1 3) #(7 6 8 5) ).
	res := m1 - m2.
	self assert: res asStructuredArray equals: #( #(-3.0 0.0 2.0 1.0) #(-2.0 0.0 -1.0 3.0) )