as yet unclassified
irisDatasetTrainingExample

	| n |
	
	n := NNetwork inputs: 4 theLayers: #( 6 ) outputs: 3.
	n train: self irisDataset nbEpochs: 1000.
	n viewLearningCurve open.