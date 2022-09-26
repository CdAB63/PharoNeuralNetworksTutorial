tests
testMin
	| m |
	m := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	self assert: m min equals: 1.