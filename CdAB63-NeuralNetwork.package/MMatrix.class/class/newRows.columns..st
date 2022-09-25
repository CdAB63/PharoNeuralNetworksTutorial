instance creation
newRows: numRows columns: numColumns
	"Create an empty MMatrix instance with a given shape"
	
	^ self basicNew
				initializeRows: numRows columns: numColumns;
				yourself