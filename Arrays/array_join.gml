// @description	Joins values of the array into a string
//
// @function	array_join(_array, _seperator="")
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{String}	_seperator	The seperating string to place between each value
// @return		{String}
function array_join(_array, _seperator="") {
	var _return_string = "";

	var _array_length = array_length(_array);

	if (_array_length == 0) {
		return _return_string;
	}

	_return_string = string(_array[0]);

	for (var _index = 1; _index < array_length(_array); _index++) {
		_return_string = _return_string + _seperator + string(_array[_index]);
	}

	return _return_string;
}
