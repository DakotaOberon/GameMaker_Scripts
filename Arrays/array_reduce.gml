// @description	Combines all values in the array using the provided function
//
// @function	array_reduce(_array, _function, [_initial_value])
// @parameter	{Array}		_array				The variable that holds the array
// @parameter	{Method}	_function			Function, takes two arguments
// @parameter	{Any}		[_initial_value]	Optional. Starting value
// @return		{Any}
function array_reduce(_array, _function, _initial_value=undefined) {
	var _array_length = array_length(_array);

	if (_array_length == 0) {
		return _initial_value;
	}

	var _start_index = 0;

	var _value = _initial_value;

	if (_initial_value == undefined) {
		_start_index = 1;
		_value = _array[0];
	}

	for (var _index = _start_index; _index < _array_length; _index++) {
		_value = _function(_value, _array[_index]);
	}

	return _value
}
