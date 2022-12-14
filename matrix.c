#include <stdio.h>
#include <errno.h>

/** Matrix product (dot operation) */
void dot(double *m1, int m1_nb_rows, int m1_nb_columns, 
	 double *m2, int m2_nb_rows, int m2_nb_columns,
	 double *res) {

	int col, row, k;
	for (col = 0; col < m2_nb_columns; col++) {
		for (row = 0; row < m1_nb_rows; row++) {
			double tmp = 0;
			for (k = 0; k < m2_nb_rows; k++) {
				tmp += m1[row * m1_nb_columns + k] * m2[k * m2_nb_columns + col];
			}
			res[row * m2_nb_columns + col] = tmp;
		}
	}
}

/** Matrix subtraction */
void sub(double *m1, int nb_rows, int nb_columns,
	 double *m2, double *res) {

	int col, row;
	for (col = 0; col < nb_columns; col++) {
		for (row = 0; row < nb_rows; row++) {
			res[row * nb_columns + col ] = m1[row * nb_columns + col] - m2[row * nb_columns + col];
		}
	}
}

/** Matrix sum */
void add(double *m1, int nb_rows, int nb_columns,
	 double *m2, double *res) {

	int col, row;
	for (col = 0; col < nb_columns; col++) {
		for (row = 0; row < nb_rows; row++) {
			res[row * nb_columns + col] = m1[row * nb_columns + col] + m2[row * nb_columns + col];
		}
	}
}

