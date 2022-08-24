// @description	Joins items from the source array into the destination array
//
// @function	array_concat(_dest_array, _src_array)
// @parameter	{Array}		_destination_array	The ID of the array to copy to
// @parameter	{Array}		_source_array		The ID of the array to copy from
// @return		{N/A}
function array_concat(_destination_array, _source_array) {
	for (var _index = 0; _index < array_length(_source_array); _index++) {
		// Push values from the source array into the destination array
		array_push(_destination_array, _source_array[_index]);
	}
}
