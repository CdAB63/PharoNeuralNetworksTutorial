operations
normalizeData: trainingDataWithExpectedOutput min: minValues max: maxValues
	"this method implies that not all values in the row are the same"
	| nbOfColumns result mn mx |
	
	nbOfColumns := trainingDataWithExpectedOutput first size - 1.
	
	result := OrderedCollection new.
	
	trainingDataWithExpectedOutput do: [ :row |
		| t v |
		t := OrderedCollection new.
		1 to: nbOfColumns do: [ :index |
			v := row at: index.
			mn := minValues at: index.
			mx := maxValues at: index.
			t add: ((v - mn) / (mx - mn)) asFloat ].
		t add: row last.
		result add: t asArray ].
	^ result asArray