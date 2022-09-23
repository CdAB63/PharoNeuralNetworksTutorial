operations
updateWeight: initialInputs
	"update the weights of the neurons in this layer based in initialValues"
	| inputs |
	inputs := initialInputs.
	self neurons do: [ :n |
		n adjustWeightWithInput: inputs.
		n adjustBias ].
	self nextLayer ifNotNil: [ self nextLayer updateWeight ]