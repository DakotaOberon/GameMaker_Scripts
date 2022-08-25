// @description	Runs a function over each item in array and returns true if every item passes
//
// @function	array_every(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Function to run for each element of the array
// @return		{Boolean}
function array_every(_array, _function) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		if (not _function(_array[_index])) {
			return false;
		}
	}

	return true;
}
