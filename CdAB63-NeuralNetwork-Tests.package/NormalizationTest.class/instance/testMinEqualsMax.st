tests
testMinEqualsMax

	| ret |
	
	ret := Normalization new normalizeData: #( #(5 1 1) #(5 0 1) ).
	self assert: ret equals: #( #(1.0 1.0 1) #(1.0 0.0 1) ). 