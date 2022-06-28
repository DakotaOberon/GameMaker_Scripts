/**
* Checks if any data structures under any id_string exist on calling instance
*
* @function		ds_exists_any(_id_string)
* @param		{string}		id_string			id string of data structure
* @return		ds_type or false
* @see			variable_instance_get, ds_exists
*/
function ds_exists_any(_id_string) {
	// Get ds variable from instance calling this function
	var ds = variable_instance_get(self, _id_string);

	// Exit early if variable doesn't exist on calling instance
	if (ds == undefined) {
		return false;
	}

	// Initiate ds types array for looping
	var ds_types = [ds_type_map, ds_type_list, ds_type_stack, ds_type_grid, ds_type_queue, ds_type_priority];

	for (var i = 0; i < array_length(ds_types); i++) {
		// Return type if ds of type exists
		if (ds_exists(ds, ds_types[i])) {
			// Set variable index to -1 to avoid accidental deletions
			variable_instance_set(self, _id_string, -1);

			return ds_types[i];
		}
	}

	return false;
}
