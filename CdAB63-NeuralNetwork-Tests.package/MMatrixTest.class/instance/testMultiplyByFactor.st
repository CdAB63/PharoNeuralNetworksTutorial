tests
testMultiplyByFactor

	| m c |
	
	m := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) #(7 8 9) ).
	c := m * 2.0.
	self assert: c class equals: MMatrix.
	self assert: c asStructuredArray equals: #( #(2.0 4.0 6.0) #(8.0 10.0 12.0) #(14.0 16.0 18.0) ).
	m := MMatrix newFromVector: #(1 2 3 4).
	c := m * 2.0.
	self assert: c class equals: MMatrix.
	self assert: c asStructuredArray equals: #( #(2.0) #(4.0) #(6.0) #(8.0) ).