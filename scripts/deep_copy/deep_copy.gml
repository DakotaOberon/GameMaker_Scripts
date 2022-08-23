// @description	Copy arrays and structs into a new object
// This will copy any depth of structs and arrays
//
// @function	deep_copy(_item)
// @parameter	{Array, Struct}		_item		array or struct item to be deep copied
// @return		{Array, Struct}
function deep_copy(_item) {
	var _item_type = typeof(_item);

	if (_item_type == "array") {
		var _array_copy = [];

		for (var _array_index = 0; _array_index < array_length(_item); _array_index++) {
			var _previous_array_value = _item[_array_index];
			
			var _new_array_value = deep_copy(_previous_array_value);

			array_push(_array_copy, _new_array_value);
		}

		return _array_copy;
	}

	if (_item_type == "struct") {
		var _struct_copy = {};

		var _struct_names = variable_struct_get_names(_item);

		for (var _name_index = 0; _name_index < array_length(_struct_names); _name_index++) {
			var _current_struct_name = _struct_names[_name_index];

			var _previous_struct_value = variable_struct_get(_item, _current_struct_name);

			var _new_struct_value = deep_copy(_previous_struct_value);

			variable_struct_set(_struct_copy, _current_struct_name, _new_struct_value);
		}

		return _struct_copy;
	}

	return _item;
}
