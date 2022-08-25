// @description	Creates an array of all values in the struct
//
// @function	variable_struct_get_values(_struct)
// @parameter	{Struct}	_struct		The struct reference to check
// @return		{Array}
function variable_struct_get_values(_struct) {
	var _struct_names = variable_struct_get_names(_struct);

	var _struct_name_length = array_length(_struct_names);

	var _array = array_create(_struct_name_length);

	for (var _index = 0; _index < _struct_name_length; _index++) {
		array_set(_array, _index, variable_struct_get(_struct, _struct_names[_index]));
	}

	return _array;
}
