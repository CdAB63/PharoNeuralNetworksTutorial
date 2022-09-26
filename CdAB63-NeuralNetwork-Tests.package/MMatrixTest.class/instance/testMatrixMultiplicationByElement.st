tests
testMatrixMultiplicationByElement

	| v1 v2 expectedVector |
	v1 := MMatrix newFromVector: #(1 2 3).
	v2 := MMatrix newFromVector: #(4 5 6).
	expectedVector := MMatrix newFromVector: #(4 10 18).
	self assert: (v1 multiplyPerElement: v2) asArray equals: expectedVector asArray.
	v1 := MMatrix newFromArrays: #( #(1 2) #(3 4) ).
	v2 := MMatrix newFromArrays: #( #(5 6) #(7 8) ).
	expectedVector := MMatrix newFromArrays: #( #(5 12) #(21 32) ).
	self assert: (v1 multiplyPerElement: v2) array asArray equals: expectedVector array asArray.