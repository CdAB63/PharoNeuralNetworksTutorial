visualization
viewLearningCurve
	"Draw the error and precision curve"
	| b ds1 ds2 ds3 |
	self errors ifEmpty: [ 
		^ RTView new add: (RTLabel elementOn: 'Should first run the network'); yourself ].
	b := RTDoubleGrapher new.
	"Define the size of the charting area"
	b extent: 640 @ 480.
	ds1 := RTData new.
	ds1 label: 'Errors'.
	"A simple optimization that Roassal offers"
	ds1 samplingIfMoreThan: 2000.
	"No need of dots, just curve"
	ds1 noDot; connectColor: Color blue.
	ds1 points: (self errors collectWithIndex: [ :y :i | i -> y ]).
	ds1 x: #key.
	ds1 y: #value.
	b add: ds1.
	ds2 := RTData new.
	ds2 label: 'Precisions'.
	ds2 samplingIfMoreThan: 2000.
	ds2 noDot; connectColor: Color red.
	ds2 points: (self precisions collectWithIndex: [ :y :i | i -> y ]).
	ds2 x: #key.
	ds2 y: #value.
	b addRight: ds2.
	self accuracy notEmpty 
		ifTrue: [ 
			ds3 := RTData new.
			ds3 label: 'Accuracy'.
			ds3 samplingIfMoreThan: 2000.
			ds3 noDot; connectColor: Color green darker.
			ds3 points: (self accuracy collectWithIndex: [ :y :i | i -> y ]).
			ds3 x: #key.
			ds3 y: #value.
			b addRight: ds3 ].
	b axisY title: 'Error'.
	self accuracy notEmpty
		ifTrue: [ b axisYRight title: 'Precision, Accuracy' ]
		ifFalse: [ b axisYRight title: 'Precision' ].
	^ b