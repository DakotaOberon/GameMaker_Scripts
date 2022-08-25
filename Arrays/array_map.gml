// @description	Run a function for each value in an array, return array with new values
//
// @function	array_map(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Function, takes one argument
// @return		{Array}
function array_map(_array, _function) {
	var _array_length = array_length(_array);

	var _new_array = array_create(_array_length);

	for (var _index = 0; _index < _array_length; _index++) {
		array_set(_new_array, _index, _function(_array[_index]));
	}

	return _new_array;
}
