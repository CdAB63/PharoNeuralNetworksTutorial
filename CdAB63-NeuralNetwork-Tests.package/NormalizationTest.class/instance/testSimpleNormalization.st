tests
testSimpleNormalization
	| input expectedNormalizedInput |
	
	input := #( #(10 5 1) #(2 6 0) ).
	expectedNormalizedInput := Normalization new normalizeData: input.
	self assert: expectedNormalizedInput equals: #( #(1.0 0.0 1) #(0.0 1.0 0))