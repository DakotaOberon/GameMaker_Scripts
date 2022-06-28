/**
* Destroys all data structures by name on calling instance
*
* @function		destroy_ds_all([names])
* @param		{string}		[names]			Names of data structures to destroy
* @return		{undefined}
* @see			ds_exists_any, variable_instance_get, ds_grid_destroy
*/
function ds_destroy_all() {
	// For each name given
	for (var i = 0; i < argument_count; i++) {
		// Get ds name
		var name = argument[i];

		// Get ds type
		var ds_type = ds_exists_any(name);

		// Exit early if it doesn't exist
		if (not ds_type) {
			continue;
		}

		// Get ds index in memory
		var ds_index = variable_instance_get(self, name);

		// Destroy ds based on type
		switch (ds_type) {
			case ds_type_grid:
				ds_grid_destroy(ds_index);
			break;
			case ds_type_list:
				ds_list_destroy(ds_index);
			break;
			case ds_type_map:
				ds_map_destroy(ds_index);
			break;
			case ds_type_priority:
				ds_priority_destroy(ds_index);
			break;
			case ds_type_queue:
				ds_queue_destroy(ds_index);
			break;
			case ds_type_stack:
				ds_stack_destroy(ds_index);
			break;
		}

		// Set variable index to -1 to avoid accidental deletions
		variable_instance_set(self, name, -1);
	}

	return;
}
