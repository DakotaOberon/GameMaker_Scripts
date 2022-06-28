/**
* Create a string out of any number of values seperated by a string
*
* @function		string_create_sep([sep], [args], ...)
* @param		{String}	[sep]		String seperator between values
* @param		{any}	    [args]		Values to convert to string
* @return		{String}
* @see			string
*/
function string_create_sep(sep="") {
	var return_string = "";

	if (argument_count > 1) {
		return_string = string(argument[1]);
	}

	for (var i = 2; i < argument_count; i++) {
		return_string += sep;
		return_string += string(argument[i]);
	}

	return return_string;
}
