instance creation
newFromArrays: arrays

	^ self basicNew 
					initializeRows: arrays size columns: arrays first size; 
					fromContents: (arrays flatCollect: #yourself);
					yourself