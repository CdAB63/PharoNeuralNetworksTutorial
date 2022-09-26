tests
testAsStructuredArray
	| m |
	m := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	self assert: m asStructuredArray equals: #( #(1 2) #(3 4) ).