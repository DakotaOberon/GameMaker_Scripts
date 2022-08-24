// @description	Return the first item that passes function in array
//
// @function	array_find(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Function, takes one argument and must return a Boolean
// @return		{Any}
function array_find(_array, _function) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		var _index_value = _array[_index];

		if (_function(_index_value)) {
			return _index_value;
		}
	}

	return undefined;
}
