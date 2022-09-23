examples
stochasticMSEExample
	| nbOfPoints r points a b f learningRate result deriMSEa deriMSEb mse g g1 d d1 d2 |
	
	nbOfPoints := 100.
	r := Random seed: 42.
	points := (1 to: nbOfPoints) collect: [  :i | ( i / nbOfPoints) asFloat @ 
		                                            ((r next * 40 - 20 + i) / nbOfPoints) asFloat ].
	a := 0.5.
	b := 3.
	learningRate := 0.01.
	f := [ :x | x * a + b ].
	result := OrderedCollection new.
	3000 timesRepeat: [ 
		deriMSEa := (2 / points size) * (points collect: [ :aPoint | 
			aPoint x * (aPoint y - (f value: aPoint x)) negated ]) sum.
		deriMSEb := (2 / points size) * (points collect: [ :aPoint | 
			1 * (aPoint y - (f value: aPoint x)) negated ]) sum.
		a := a - (learningRate * deriMSEa).
		b := b - (learningRate * deriMSEb).
		mse := (points collect: [ :aPoint | (aPoint y - (f value: aPoint x)) squared ]) sum / points size.
		result add: mse ].
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