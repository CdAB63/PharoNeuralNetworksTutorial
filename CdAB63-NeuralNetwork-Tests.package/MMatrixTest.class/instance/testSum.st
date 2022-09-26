tests
testSum

	| m |
	
	m := MMatrix newFromArrays: #( #(1 2 3 4) #(5 6 7 8) ).
	self assert: m sum equals: (1 to: 8) sum