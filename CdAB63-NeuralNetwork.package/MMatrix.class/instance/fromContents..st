initialization
fromContents: content

	| s1 s2 |
	s1 := content size.
	s2 := self nbRows * self nbColumns.
	self assert: [ content size = (self nbRows * self nbColumns) ] description: 'size mismatch'.
	content doWithIndex: [ :v :i | self array at: i put: v ]