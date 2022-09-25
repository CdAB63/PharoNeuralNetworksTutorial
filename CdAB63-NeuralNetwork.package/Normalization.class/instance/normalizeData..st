operations
normalizeData: trainingDataWithExpectedOutput

	| nbOfColumns min max |
	
	nbOfColumns := trainingDataWithExpectedOutput first size - 1.
	
	min := OrderedCollection new.
	max := OrderedCollection new.
	1 to: nbOfColumns do: [ :index |
		| column |
		column := trainingDataWithExpectedOutput collect: [ :row | row at: index ].
		min add: column min.
		max add: column max ].
	^ self normalizeData: trainingDataWithExpectedOutput min: min max: max