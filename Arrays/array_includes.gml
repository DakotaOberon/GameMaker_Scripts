// @description	Returns true if given value is found in the array
//
// @function	array_includes(_array, _value)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Any}		_value		Value to search for
// @return		{Boolean}
function array_includes(_array, _value) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		if (_array[_index] == _value) {
			return true;
		}
	}

	return false;
}
