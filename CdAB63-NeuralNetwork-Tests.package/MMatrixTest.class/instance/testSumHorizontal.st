tests
testSumHorizontal
	| m expectedResult |
	m := MMatrix newFromArrays: #( #(1.0 2.0) #(3.0 4.0) #(5.0 6.0) ).
	expectedResult := MMatrix newFromArrays: #( #(3.0) #(7.0) #(11.0) ).
	self assert: m sumHorizontal asStructuredArray equals: expectedResult asStructuredArray