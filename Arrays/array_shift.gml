// @description	Removes and returns the first value of the array
//
// @function	array_shift(_array)
// @parameter	{Array}		_array			The variable that holds the array
// @return		{Any}
function array_shift(_array) {
	var _value = _array[0];

	array_delete(_array, 0, 1);

	return _value;
}
