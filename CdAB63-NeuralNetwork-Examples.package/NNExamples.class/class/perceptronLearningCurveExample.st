examples
perceptronLearningCurveExample

	| p r f learningCurve anX anY trainedOutput nbOfGood realOutput g d |
	
	learningCurve := OrderedCollection new.
	f := [ :x | (-2 * x) - 3 ].
	0 to: 2000 by: 10 do: [ : nbOfTrained |
		r := Random new seed: 42.
		p := Perceptron new.
		p weights: { 1 . 2 }.
		p bias: -1.
		
		nbOfTrained timesRepeat: [ 
			anX := (r nextInteger: 50) - 25.
			anY := (r nextInteger: 50) - 25.
			trainedOutput := (f value: anX) >= anY ifTrue: [ 1 ] ifFalse: [ 0 ].
			p train: (Array with: anX with: anY) desiredOutput: trainedOutput ].
		
		nbOfGood := 0.
		1000 timesRepeat: [
			anX := (r nextInteger: 50).
			anY := (r nextInteger: 50).
			realOutput := (f value: anX) >= anY ifTrue: [ 1 ] ifFalse: [ 0 ].
			((p feed: { anX . anY }) - realOutput) abs < 0.2 ifTrue: [ nbOfGood := nbOfGood + 1 ] ].
		
		learningCurve add: { nbOfTrained . (nbOfGood / 1000) } ].

	g := RTGrapher new.
	d := RTData new.
	d noDot.
	d connectColor: Color blue.
	d points: learningCurve.
	d x: #first.
	d y: #second.
	g add: d.
	g axisY title: 'Precision'.
	g axisX noDecimal; title: 'Training iteration'.
	g open