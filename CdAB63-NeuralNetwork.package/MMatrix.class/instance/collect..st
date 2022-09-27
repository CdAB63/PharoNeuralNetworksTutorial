enumerating
collect: aOneArgBlock
	"return a new MMatrix for which each element is transformed using the provided block"
	
	| result |
	
	result := self class newRows: self nbRows columns: self nbColumns.
	
	1 to: self nbRows do: [ :y |
		1 to: self nbColumns do: [ :x |
			result at: y @ x put: (aOneArgBlock value: (self at: y @ x)) ] ].
	
	^ result