tests
testMultiplyPerElement

	| m1 m2 r |
	
	m1 := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	m2 := MMatrix newFromArrays: #( #(3 4) #(2 1) ).
	r := m1 multiplyPerElement: m2.
	self assert: r asStructuredArray equals: #( #(3.0 8.0) #(6.0 4.0) ).
	m1 := MMatrix newFromVector: #(1 2 3).
	m2 := MMatrix newFromVector: #(3 2 1).
	r := m1 multiplyPerElement: m2.
	self assert: r asStructuredArray equals: #( #(3.0) #(4.0) #(3.0) ).