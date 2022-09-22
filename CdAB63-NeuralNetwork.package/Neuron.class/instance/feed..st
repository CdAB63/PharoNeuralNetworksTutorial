operations
feed: inputs

	| z |
	z := (inputs with: self weights collect: [ :x :w | x * w ]) sum + bias.
	^ self activationFunction eval: z