// @description	Create a string out of any number of values seperated by a string
//
// @function	string_create_with_seperation([_sep], [_args], ...)
// @parameter	{String}	[_sep]		String seperator between values
// @parameter	{Any}	    [_args]		Values to convert to string
// @return		{String}
function string_create_with_seperation(_sep="") {
	var _return_string = "";

	if (argument_count > 1) {
		_return_string = string(argument[1]);
	}

	for (var i = 2; i < argument_count; i++) {
		_return_string += _sep;
		_return_string += string(argument[i]);
	}

	return _return_string;
}
