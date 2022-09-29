updating
predict: inputs
	"make a prediction"
	
	| outputs |
	
	outputs := self feed: inputs.
	^ { (outputs asArray indexOf: (outputs max)) - 1 . outputs asArray max }