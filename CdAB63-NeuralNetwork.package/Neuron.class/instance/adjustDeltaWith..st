operations
adjustDeltaWith: anError
	self delta: anError * (self activationFunction derivative: output)