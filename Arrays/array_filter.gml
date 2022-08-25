// @description	Get new array of values that fit given filter function
//
// @function	array_filter(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Filter function, takes one argument and must return a Boolean
// @return		{Array}
function array_filter(_array, _function) {
	var _new_array = [];

	for (var _index = 0; _index < array_length(_array); _index++) {
		var _index_value = _array[_index];

		if (_function(_index_value)) {
			array_push(_new_array, _index_value);
		}
	}

	return _new_array;
}
