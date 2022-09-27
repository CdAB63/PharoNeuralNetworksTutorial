tests
testStretchToColumns

	| v r |
	v := MMatrix newFromVector: #(1 2 3 4).
	r := v stretchToColumns: 3.
	self assert: r asStructuredArray equals: #( #(1 1 1) #(2 2 2) #(3 3 3) #(4 4 4) )