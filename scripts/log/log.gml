// @description	Logs items to console, with a timestamp, and seperated by spaces
//
// @function	log([value], ...)
// @parameter	{any}		[value]		Values to be logged
// @return		{N/A}
function log() {
	// Attach current time to logged message
	var _log_string = "[" + date_time_string(date_current_datetime()) + "]";

	// Create string from arguments
	for(var i = 0; i < argument_count; i++) {
		_log_string += " " + string(argument[i]);
	}

	show_debug_message(_log_string);
}
