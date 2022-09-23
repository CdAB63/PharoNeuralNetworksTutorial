operations
train: someInputs desiredOutputs: desiredOutputs
	self feed: someInputs.
	self backwardPropagateError: desiredOutputs.
	self updateWeight: someInputs