initialization
initializeHandle: aHandle rows: numRows columns: numColumns

	self initialize.
	self nbRows: numRows.
	self nbColumns: numColumns.
	self array: (self newArrayFromHandle: aHandle)