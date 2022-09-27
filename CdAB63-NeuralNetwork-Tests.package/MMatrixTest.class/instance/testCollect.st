tests
testCollect

	| m c |
	
	m := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) #(7 8 9) ).
	c := m collect: [ :e | e * e ].
	self assert: c class equals: MMatrix.
	self assert: c asStructuredArray equals: #( #(1.0 4.0 9.0) #(16.0 25.0 36.0) #(49.0 64.0 81.0) ).