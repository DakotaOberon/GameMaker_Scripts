// @description	Removes all items from a struct
//
// @function	variable_struct_clear(_struct)
// @parameter	{Struct}	_struct		The struct reference to check
// @return		{N/A}
function variable_struct_clear(_struct) {
	var _struct_names = variable_struct_get_names(_struct);

	for (var _index = 0; _index < array_length(_struct_names); _index++) {
		variable_struct_remove(_struct, _struct_names[_index]);
	}
}
