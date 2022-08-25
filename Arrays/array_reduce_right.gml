// @description	Combines all values in the array starting from the end using the provided function
//
// @function	array_reduce_right(_array, _function, [_initial_value])
// @parameter	{Array}		_array				The variable that holds the array
// @parameter	{Method}	_function			Function, takes two arguments
// @parameter	{Any}		[_initial_value]	Optional. Starting value
// @return		{Any}
function array_reduce_right(_array, _function, _initial_value=undefined) {
	var _array_length = array_length(_array);

	if (_array_length == 0) {
		return _initial_value;
	}

	var _start_offset = 1;

	var _value = _initial_value;

	if (_initial_value == undefined) {
		_start_offset = 2;
		_value = _array[_array_length - 1];
	}

	for (var _index = _array_length - _start_offset; _index >= 0; _index--) {
		_value = _function(_value, _array[_index]);
	}

	return _value
}
