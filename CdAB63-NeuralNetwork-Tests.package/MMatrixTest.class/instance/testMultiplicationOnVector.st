tests
testMultiplicationOnVector 

	| m |
	
	m := MMatrix newFromVector: #(1 2 3 4).
	self assert: (m * 5) asStructuredArray equals: #(#(5) #(10) #(15) #(20))