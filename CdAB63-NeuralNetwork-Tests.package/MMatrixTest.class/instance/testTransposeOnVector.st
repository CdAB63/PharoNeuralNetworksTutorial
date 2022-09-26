tests
testTransposeOnVector

	| m expectedResult |
	
	m := MMatrix newFromVector: #(1 2 3 4).
	expectedResult := MMatrix newFromArrays: #( #(1 2 3 4) ).
	self assert: m transposed asStructuredArray equals: expectedResult asStructuredArray