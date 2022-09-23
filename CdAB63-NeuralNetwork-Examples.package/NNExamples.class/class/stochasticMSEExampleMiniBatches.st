examples
stochasticMSEExampleMiniBatches
	| nbOfPoints r points a b f learningRate result deriMSEa deriMSEb mse 
	  accumulatedMSE batchSize currentBatch miniBatches g g1 d d1 d2 |
	
	nbOfPoints := 100.
	r := Random seed: 42.
	points := (1 to: nbOfPoints) collect: [  :i | ( i / nbOfPoints) asFloat @ 
		                                            ((r next * 40 - 20 + i) / nbOfPoints) asFloat ].
	currentBatch := OrderedCollection new.
	miniBatches := OrderedCollection new.
	batchSize := 5.
	1 to: points size do: [  :index |
		currentBatch add: (points at: index).
		index \\ batchSize = 0 ifTrue: [ 
			miniBatches add: currentBatch copy.
			currentBatch := OrderedCollection new ] ].
	miniBatches.
	a := 0.5.
	b := 3.
	learningRate := 0.01.
	f := [ :x | x * a + b ].
	result := OrderedCollection new.
	1000 timesRepeat: [ 
		accumulatedMSE := 0.
		miniBatches do: [ :pointsBatch |
			deriMSEa := (2 / pointsBatch size) * (pointsBatch collect: [ :aPoint |
				aPoint x * (aPoint y - (f value: aPoint x)) negated ]) sum.
			deriMSEb := (2 / pointsBatch size) * (pointsBatch collect: [ :aPoint |
				1 * (aPoint y - (f value: aPoint x)) negated ]) sum.
			a := a - (learningRate * deriMSEa).
			b := b - (learningRate * deriMSEb).
			mse := (pointsBatch collect: [ :aPoint |
				(aPoint y - (f value: aPoint x)) squared ]) sum / points size.
			accumulatedMSE := accumulatedMSE + mse ].
		result add: accumulatedMSE ].
	g := RTGrapher new.
	d := RTData new.
	d noDot.
	d connectColor: Color blue.
	d points: result.
	d y: #yourself.
	g add: d.
	g open.
	g1 := RTGrapher new.
	d1 := RTData new.
	d1 dotShape color: Color red.
	d1 points: points.
	d1 y: #y.
	d1 x: #x.
	g1 add: d1.
	d2 := RTData new.
	d2 noDot.
	d2 connectColor: Color green darker.
	d2 points: (0 to: 1.0 by: 0.01).
	d2 x: #yourself.
	d2 y: f.
	g1 add: d2.
	g1 open