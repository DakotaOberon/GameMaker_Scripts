// @description	Removes values from the array using start and end index. Returns an array of removed items
//
// @function	array_slice(_array, _start_index, [_end_index])
// @parameter	{Array}		_array		The variable that holds the array
// @parameter	{Real}		_start_index	The index with the array to start copying from
// @parameter	{Real}		[_end_index]	Optional. Non-inclusive. The index within the array to copy to
// @return		{Array}
function array_slice(_array, _start_index, _end_index=undefined) {
	if (_end_index == undefined) {
		_end_index = array_length(_array);
	}

	var _new_array_length = _end_index - _start_index - 1;

	var _new_array = array_create(_new_array_length);

	array_copy(_new_array, 0, _array, _start_index, _new_array_length);

	return _new_array;
}
