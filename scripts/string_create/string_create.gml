/**
* Create a string out of any number of values
*
* @function		string_create([args], ...)
* @param		{any}	    [args]		Values to convert to string
* @return		{String}
* @see    references
*/
function string_create() {
	var return_string = "";

	for (var i = 0; i < argument_count; i++) {
		return_string += string(argument[i]);
	}

	return return_string;
}
