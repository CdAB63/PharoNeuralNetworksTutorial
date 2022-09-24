examples
irisDatasetTrainingExample

	| n cut cutTraining cutTest dataSet shuffledIrisDataset testSet |
	
	"first get the iris dataset"
	shuffledIrisDataset := self irisDataset shuffleBy: (Random seed: 42).
	"set cut to 80% of the original datasetdatasets: "
	cut := 0.8.
	"cut training andtest"
	cutTraining := (shuffledIrisDataset size * cut) rounded.
	cutTest := (shuffledIrisDataset size * (1 - cut)) rounded.
	dataSet := shuffledIrisDataset first: cutTraining.
	testSet := shuffledIrisDataset last: cutTest.
	"create ANN"
	n := NNetwork inputs: 4 theLayers: #( 6 ) outputs: 3.
	"train ANN"
	n train: self irisDataset nbEpochs: 1000 test: testSet.
	n viewLearningCurve open.