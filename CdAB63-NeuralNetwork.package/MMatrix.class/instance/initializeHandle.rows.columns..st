accessing
initializeHandle: aHandle rows: numRows columns: numColumns
	"initialize the matrix"
	self initialize.
	self nbRows: numRows.
	self nbColumns: numColumns.
	self array: (self newArrayFromHandle: aHandle)