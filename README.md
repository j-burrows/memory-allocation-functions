memory-allocation-functions
===========================

A library for allocating complex C datastructures
MEMORY ALLOCATION LIBRARY FUNCTION LIST


int** malloc_double(size_t* array_rows, size_t* array_cols)
Purpose:  Allocates memory for a double array.
@param:	array_rows,		The desired rows in the array.
 		array_cols,		The desired columns in the array
@return:	array_double,	A pointer to the newly created double array.
 		0,			The allocation was unsuccessful.
 Errors:	If an allocation of memory fails, the rows and columns of the array are 
 		set to zero, and an error value is returned.


char** malloc_double_char(size_t* array_rows, size_t* array_cols)
Purpose:	Allocates memory for a double array of characters.
@param:	array_rows,		The desired rows in the array.
 		array_cols,		The desired columns in the array
 @return:	array_double_char,	A pointer to the newly created double array of chars.
 		0,			The allocation was unsuccessful.
 Errors:	If an allocation fails, all allocated memory is freed, and the rows and
 		columns are set to zero, and an error value is returned.


int** array_one_to_two(int* array_one, size_t* array_one_len, size_t* row_len, 
									size_t* col_len)
Purpose:	Converts a single array into a double array of integers.
@param:	array_one,		The array whos contents will be copied into double array.
 		array_one_len,	The length of the given array.
 		row_len,		The number of rows in the two dimensional array.
 		col_len,		The number of columns in the two dimensional array.
@return:	array_double_char,	A pointer to the newly created double array of chars.
		NULL,			The allocation was unsuccessful, or the sizes were bad.
Errors:		If an allocation fails, all allocated memory is freed, and the rows and
		columns are set to zero, and an error value is returned.


char** array_one_to_two_char(char* array_one, size_t* array_one_len, size_t* row_len, 
									size_t* col_len)
Purpose:	Converts a single array into a double array of chars.
@param:	array_one,		The array whos contents will be copied into double array.
		array_one_len,	The length of the given array.
		row_len,		The number of rows in the two dimensional array.
		col_len,		The number of columns in the two dimensional array.
@return:	array_double_char,	A pointer to the newly created double array of chars.
		NULL,			The allocation was unsuccessful, or the sizes were bad.
Errors:		If an allocation fails, all allocated memory is freed, and the rows and
		columns are set to zero, and an error value is returned.



void free_double_array(int** array_double, size_t* row_len, size_t* col_len)
Subroutine:	free_double_array
Purpose:	Frees all elements in a double array of integers and sets sizes to zero.
@param:	array_double,		The double array that will have all allocated memory freed.
		row_len,		The number of rows in the two dimensional array.
 		col_len,		The number of columns in the two dimensional array.
