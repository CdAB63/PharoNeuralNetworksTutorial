tests
testAddition2

	| m |
	m := MMatrix newFromArrays: #( #(1 2 3) #(4 5 6) ).
	self assert: (m + m) asStructuredArray equals: #( #(2 4 6) #(8 10 12) )