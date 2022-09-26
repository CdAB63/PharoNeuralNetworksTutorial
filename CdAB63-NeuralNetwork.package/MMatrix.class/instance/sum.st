primitives - plugin
sum
	"return the sum of the matrix values"
	
	| sum |
	
	sum := 0.
	1 to: self nbRows do: [ :y |
		1 to: self nbColumns do: [ :x |
			sum := sum + (self at: y @ x) ] ].
	^ sum