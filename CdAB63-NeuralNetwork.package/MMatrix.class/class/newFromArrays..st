instance creation
newFromArrays: arrays
	"Create a new instance from given arrays"
	
	^ self basicNew
				initializeRows: arrays size columns: arrays first size;
				fromContents: (arrays flatCollect: #yourself);
				yourself