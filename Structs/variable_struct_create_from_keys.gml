// @description	Creates a new struct with the specified keys
//
// @function	variable_struct_create_from_keys(_keys, _default_value=0)
// @parameter	{Array}		_keys				Array of key names
// @parameter	{Any}		[_default_value]	Optional. Default value of each key
// @return		{Struct}
function variable_struct_create_from_keys(_keys, _default_value=0) {
	var _struct = {};

	for (var _index = 0; _index < array_length(_keys); _index++) {
		variable_struct_set(_struct, _keys[_index], _default_value);
	}

	return _struct;
}
