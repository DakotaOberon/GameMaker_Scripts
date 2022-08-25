// @description	Run a function for each value in an array
//
// @function	array_for_each(_array, _function)
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Method}	_function	Function, takes one argument
// @return		{N/A}
function array_for_each(_array, _function) {
	for (var _index = 0; _index < array_length(_array); _index++) {
		_function(_array[_index]);
	}
}
