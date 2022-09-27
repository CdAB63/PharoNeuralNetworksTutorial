instance creation
newRows: numRows columns: numColumns

	^ self basicNew
					initializeRows: numRows columns: numColumns;
					yourself