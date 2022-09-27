tests
testSum

	| m r |
	
	m := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	r := m sum.
	self assert: r equals: 10.0.