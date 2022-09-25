instance creation
fromContents: content
	"initialize the matrix with a linear content"
	
	self assert: [ content size = (self nbColumns * self nbRows) ] description: 'Size mismatch'.
	content doWithIndex: [ :v :i | self array at: i put: v ]