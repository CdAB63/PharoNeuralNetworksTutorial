instance creation
inputs: nbOfInputs theLayers: nbOfNeuronsPerLayer outputs: nbOfOutputs activationFunction: activationFunction

	| nn |
	
	nn := self new.
	nn configure: nbOfInputs theLayers: nbOfNeuronsPerLayer nbOfOutputs: nbOfOutputs.
	nn activationFunction: activationFunction.
	^ nn