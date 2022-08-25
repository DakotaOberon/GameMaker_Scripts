// @description	Adds all keys and values from the source struct into the destination struct
//
// @function	variable_struct_update(_destination_struct, _source_struct)
// @parameter	{Struct}	_destination_struct		The struct reference to check
// @parameter	{Struct}	_source_struct			The struct reference to check
// @return		{N/A}
function variable_struct_update(_destination_struct, _source_struct) {
	var _source_struct_names = variable_struct_get_names(_source_struct);

	for (var _index = 0; _index < _source_struct_names; _index++) {
		var _source_name = _source_struct_names[_index];
		var _source_value = variable_struct_get(_source_struct, _source_name)
		
		variable_struct_set(_destination_struct, _source_name, _source_value);
	}
}
