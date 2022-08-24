// @description	Returns the last index of the given value
//
// @function	array_last_index_of(_array, _value)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Any}		_value		Value to search for
// @return		{Real}
function array_last_index_of(_array, _value) {
	for (var _index = array_length(_array) - 1; _index >= 0; _index--) {
		if (_array[_index] == _value) {
			return _index;
		}
	}

	return -1;
}
