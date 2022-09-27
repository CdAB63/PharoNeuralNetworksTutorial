instance creation
newFromVector: array

	^ self basicNew
					initializeRows: array size columns: 1;
					fromContents: array;
					yourself