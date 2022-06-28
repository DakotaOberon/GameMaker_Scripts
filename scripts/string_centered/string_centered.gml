/**
* Create a string centered between characters
*
* @function		function_name{value, length, character=" ")
* @param		{String}	value		String to center
* @param		{real}		length		The length of the returned string
* @param		{String}	[character]	Optional. The character to fill the missing space on each side. Default is " " (space)
* @return		{String}
* @see			string_repeat
*/
function string_centered(value, length, character=" ") {
	if (string_length(character) > 1) {
		show_error("The fill character in string_centered() must be exactly one character long", true);
	}

	if (length <= string_length(value)) {
		return value;
	}

	var characters_on_each_side = (length - string_length(value)) / 2;

	var left_side = string_repeat(character, ceil(characters_on_each_side));
	var right_side = string_repeat(character, floor(characters_on_each_side));

	return left_side + value + right_side;
}
