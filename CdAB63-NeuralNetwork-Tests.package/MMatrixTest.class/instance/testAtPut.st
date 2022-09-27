tests
testAtPut

	| m |
	m := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	m at: 2 @ 1 put: 10.
	self assert: (m at: 1 @ 2) equals: 2.0.
	self assert: (m at: 2 @ 2) equals: 4.0.
	self assert: (m at: 2 @ 1) equals: 10.0.