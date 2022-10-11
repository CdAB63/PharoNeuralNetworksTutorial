as yet unclassified
simpleFitnessHistogram
	| inds fitnessBlock data g d |
	inds := GAIndividual 
						create: 1000
						individualsAndInitialize: 3
						genesWith: [ :r | ($a to: $z) atRandom: r ].
	fitnessBlock := [ :genes |
								(genes with: 'cat' asArray collect: [ :a :b |
									(a == b)
										ifTrue: [ 1 ]
										ifFalse: [ 0 ] ]) sum ].
	inds do: [ :i | i computeFitnessUsing: fitnessBlock ].

	data := ((inds collect: #fitness) groupedBy: #yourself)
						associations collect: [ :as | 
							as key -> as value size ].

	g := RTGrapher new.
	d := RTData new.
	d points: data.
	d barChartWithBarTitle: #key.
	d y: [ :as | as value ].
	d yLog.
	g add: d.
	g axisY noDecimal.
	g axisX noTick.
	g open