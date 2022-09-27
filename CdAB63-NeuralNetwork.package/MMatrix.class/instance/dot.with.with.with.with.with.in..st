arithmetic
dot: array1 with: m1_nb_rows with: m1_nb_columns with: array2 with: m2_nb_rows with: m2_nb_columns in: res
	"c library for dot product"
	
	^ self ffiCall: #(void dot(double *array1,
								int m1_nb_rows,
								int m1_nb_columns,
								double *array2,
								int m2_nb_rows,
								int m2_nb_columns,
								double *res))
				module: 'libdarknet.so'