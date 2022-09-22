examples
perceptronClassificationExample

	| f p r anX anY designedOutput testPoints g d d2 |
	
	"Define the function"
	f := [ :x | (-2 * x) - 3 ].
	
	"Create the perceptron"
	p := Perceptron new.
	p weights: { 1 . 2 }.
	p bias: -1.
	
	"Create the random generator"
	r := Random new seed: 42.
	
	"Train the perceptron"
	2170 timesRepeat: [ 
		anX := (r nextInteger: 50) - 25.
		anY := (r nextInteger: 50) - 25.
		designedOutput := (f value: anX) >= anY ifTrue: [ 1 ] ifFalse: [ 0 ].
		p train: { anX . anY } desiredOutput: designedOutput
	].

	"Test points"
	testPoints := OrderedCollection new.
	2000 timesRepeat: [ 
		testPoints add: {  ((r nextInteger: 50) - 25). ((r nextInteger: 50) - 25) } ].
	
	g := RTGrapher new.
	d := RTData new.
	d dotShape color: [ :point |
		(p feed: point) > 0.5 ifTrue: [  Color red trans ] ifFalse: [ Color blue trans ] ].
	d points: testPoints.
	d x: #first.
	d y: #second.
	g add: d.
	
	d2 := RTData new.
	d2 noDot.
	d2 connectColor: Color red.
	d2 points: (-15 to: 15 by: 0.1).
	d2 y: f.
	d2 x: #yourself.
	g add: d2.
	
	g open
	