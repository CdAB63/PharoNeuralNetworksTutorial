instance creation
inputs: nbOfInputs theLayers: nbOfNeuronsPerLayer outputs: nbOfOutputs

	| nn |
	
	nn := self new.
	nn configure: nbOfInputs theLayers: nbOfNeuronsPerLayer nbOfOutputs: nbOfOutputs.
	^ nn