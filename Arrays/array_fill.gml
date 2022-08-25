// @description	Fill each index of an array between start and end index (non-inclusive) with a value
//
// @function	array_fill(_array, _start_index, _end_index, _value)
// @parameter	{Array}		_array			The variable that holds the array
// @parameter	{Real}		_start_index	The index with the array to start copying from
// @parameter	{Real}		_end_index		Non-Inclusive. The index within the array to copy to
// @parameter	{Any}		_value			The value to set
// @return		{N/A}
function array_fill(_array, _start_index, _end_index, _value) {
	for (var _index = _start_index; _index < _end_index; _index++) {
		array_set(_array, _index, _value);
	}
}
