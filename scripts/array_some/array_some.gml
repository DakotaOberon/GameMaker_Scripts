// @description	Checks if any item in the array passes the given function
//
// @function	array_some(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Function to run for each element of the array
// @return		{Boolean}
function array_some(_array, _function) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		if (_function(_array[_index])) {
			return true;
		}
	}

	return false;
}
