tests
testMultiplicationOnMatrix 

	| m |
	
	m := MMatrix newFromArrays: #( #(1 2 3 4) #(5 6 7 8)).
	self assert: (m * 5) asStructuredArray equals: #(#(5 10 15 20) #(25 30 35 40))