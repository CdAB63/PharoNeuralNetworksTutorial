operations
test: testData
	"test network for accuracy"
	
	^ (((testData collect: [ :d | (self predict: d allButLast) = d last ])
			select: [  :d | d ]) size / testData size) asFloat round: 2
	