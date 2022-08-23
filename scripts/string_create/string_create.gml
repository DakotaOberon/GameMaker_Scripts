// @description	Create a string out of any number of values
//
// @function	string_create([_args], ...)
// @parameter	{any}	    [_args]		Values to convert to string
// @return		{String}
function string_create() {
	var _return_string = "";

	for (var i = 0; i < argument_count; i++) {
		_return_string += string(argument[i]);
	}

	return _return_string;
}
