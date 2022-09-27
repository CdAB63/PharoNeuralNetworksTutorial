tests
testMax

	| m |
	
	m := MMatrix newFromArrays: #( #(12 27 1) #(32 9 55) #(11 8 3) ).
	self assert: m max equals: 55