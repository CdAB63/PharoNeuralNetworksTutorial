tests
testAddition2 
	| m1 res |
	m1 := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) ).
	res := m1 + m1.
	self assert: res asStructuredArray equals: #( #(2.0 4.0 6.0) #(8.0 10.0 12.0) )