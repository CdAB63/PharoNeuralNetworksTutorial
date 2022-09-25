instance creation
newHandle: aHandle rows: nbRows columns: nbColumns
	"create a new instance with content"
	
	| nmtrx |
	
	nmtrx := self basicNew.
	nmtrx initializeHandle: aHandle rows: nbRows columns: nbColumns.
	^ nmtrx