point functions
transposed 
	"Transpose the matrix"
	
	| result |
	
	result := self class newRows: self nbColumns columns: self nbRows.
	
	1 to: self nbRows do: [ :row |
		1 to: self nbColumns do: [ :column |
			result at: column @ row put: (self at: row @ column) ] ].
	^ result