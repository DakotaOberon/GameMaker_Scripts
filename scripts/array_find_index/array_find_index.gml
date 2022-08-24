// @description	Return the index of first item of the array that passes the function
//
// @function	array_find_index(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Function, takes one argument and must return a Boolean
// @return		{Real}
function array_find_index(_array, _function) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		if (_function(_array[_index])) {
			return _index;
		}
	}

	return -1;
}
