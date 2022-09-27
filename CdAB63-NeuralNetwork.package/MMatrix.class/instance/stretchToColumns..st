converting
stretchToColumns: nbOfColumns

	| content result |
	content := OrderedCollection new.
	1 to: self nbRows do: [ :row |
		1 to: nbOfColumns do: [ :columns |
			content add: (self at: row @ 1) ] ].
	result := MMatrix newRows: self nbRows columns: nbOfColumns.
	result fromContents: content.
	^ result