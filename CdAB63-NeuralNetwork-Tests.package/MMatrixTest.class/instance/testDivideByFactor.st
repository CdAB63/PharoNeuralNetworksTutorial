tests
testDivideByFactor

	| m r |
	
	m := MMatrix newFromArrays: #( #(2 4 6) #(8 10 12) ).
	r := m / 2.
	self assert: r asStructuredArray equals: #( #(1.0 2.0 3.0) #(4.0 5.0 6.0) )