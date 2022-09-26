arithmetic
sumHorizontal 
	"horizontal summing"
	| result sum |
	result := self class newRows: self nbRows columns: 1.
	1 to: self nbRows do: [ :y |
		sum := 0.
		1 to: self nbColumns do: [ :x |
			sum := sum + (self at: y @ x) ].
		result at: y @ 1 put: sum ].
	^ result