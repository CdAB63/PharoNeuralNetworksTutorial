tests
testDivision 

	| m |
	
	m := MMatrix newFromArrays: #( #(2 4) #(6 8) ).
	self assert: (m / 2) asStructuredArray equals: #( #(1 2) #(3 4) )