instance creation
newHandle: aHandle rows: numRows columns: numColumns

	^ self basicNew
					initializeHandle: aHandle rows: numRows columns: numColumns;
					yourself