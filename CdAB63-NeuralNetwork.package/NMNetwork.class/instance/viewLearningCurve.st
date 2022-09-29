visualization
viewLearningCurve
	| b ds |
	self errors
		ifEmpty: [ ^ RTView new add: (RTLabel elementOn: 'should first run the network'); yourself ].
		
		b := RTGrapher new.
		b extent: 500 @ 500.
		ds := RTData new.
		ds samplingIfMoreThan: 2000.
		ds noDot.
		ds connectColor: Color blue.
		ds points: (self errors collectWithIndex: [ :y :i | i -> y ]).
		ds x: #key.
		ds y: #value.
		ds dotShape rectangle color: Color blue.
		b add: ds.
		b axisX noDecimal; title: 'Epoch'.
		b axisY title: 'ERROR'.
		^ b