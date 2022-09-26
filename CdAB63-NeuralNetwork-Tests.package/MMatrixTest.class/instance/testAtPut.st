tests
testAtPut
	| m |
	m := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	self assert: (m at: 2@1) equals: 3.
	m at: 2@1 put: 7.
	self assert: (m at: 2@1) equals: 7