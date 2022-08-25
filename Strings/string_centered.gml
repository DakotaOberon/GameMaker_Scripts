// @description	Create a string centered between characters
//
// @function	function_name{_value, _length, [_character])
// @parameter	{String}	_value			String to center
// @parameter	{Real}		_length			The length of the returned string
// @parameter	{String}	[_character]	Optional. The character to fill the missing space on each side. Default is " " (space)
// @return		{String}
function string_centered(_value, _length, _character=" ") {
	if (string_length(_character) > 1) {
		show_error("The fill character in string_centered() must be exactly one character long", true);
	}

	if (_length <= string_length(_value)) {
		return _value;
	}

	var characters_on_each_side = (_length - string_length(_value)) / 2;

	var _left_side = string_repeat(_character, ceil(characters_on_each_side));
	var _right_side = string_repeat(_character, floor(characters_on_each_side));

	return _left_side + _value + _right_side;
}
