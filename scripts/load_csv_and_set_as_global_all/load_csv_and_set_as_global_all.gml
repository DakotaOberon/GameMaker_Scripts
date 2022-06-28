/**
* Loads all csv files and creates a global variable for each one
*
* @function		load_csv_and_set_as_global([mask])
* @param		{string}		[mask]			Append a mask value to the front of the csv mask to load files from
* @return		{ds_grid[]}
* @see			file_find_first, load_csv_and_set_as_global
*/
function load_csv_and_set_as_global_all(mask="") {
	// Get first file matching mask
	var filename = file_find_first(mask + "*.csv", 0);

	// Init grid array
	var grid_array = [];

	while filename != "" {
		// Get filename with ".csv"
		var filename_without_csv_tag = string_copy(filename, 0, string_length(filename) - 4);

		// Add loaded grid to grid array
		array_push(grid_array, load_csv_and_set_as_global(filename_without_csv_tag));

		// Find next file matching mask
		filename = file_find_next();
	}

	// Close files to clear up memory
	file_find_close();

	return grid_array;
}
