// @description	Returns the first index of the given value
//
// @function	array_index_of(_array, _value)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Any}		_value		Value to search for
// @return		{Real}
function array_index_of(_array, _value) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		if (_array[_index] == _value) {
			return _index;
		}
	}

	return -1;
}
