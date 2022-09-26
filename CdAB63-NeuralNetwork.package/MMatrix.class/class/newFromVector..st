instance creation
newFromVector: anArray
	"create a Nx1 matrix from an array of numbers"
	^ self basicNew
					initializeRows: anArray size columns: 1;
					fromContents: anArray;
					yourself