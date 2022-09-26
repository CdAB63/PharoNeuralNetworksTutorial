tests
testAt
	| m |
	m := MMatrix newFromArrays: #( #(1 2) #(3 4)).
	self assert: (m at: 1@1) equals: 1.
	self assert: (m at: 1@2) equals: 2.
	self assert: (m at: 1@3) equals: 3.
	self assert: (m at: 1@4) equals: 4