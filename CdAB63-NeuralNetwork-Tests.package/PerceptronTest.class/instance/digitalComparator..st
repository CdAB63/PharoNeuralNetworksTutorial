tests
digitalComparator: inputs
	"Return an array of three elements"
	| not and nor a b aGb aLb aEb notA notB |
	a := inputs first.
	b := inputs second.
	and := self newNeuron weights: #(1 1); bias: -1.5.
	not := self newNeuron weights: #(-1); bias: 0.5.
	nor := self newNeuron weights: #(-1 -1); bias: 0.5.
	notA := not feed: { a }.
	notB := not feed: { b }.
	aLb := and feed: { notA . b }.
	aGb := and feed: { a . notB }.
	aEb := nor feed: { aGb . aLb }.
	^ { aGb . aEb. aLb }