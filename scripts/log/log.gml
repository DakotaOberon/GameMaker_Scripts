/**
* Logs items to console, with a timestamp, and seperated by spaces
*
* @function		log([value], ...)
* @param		{any}		[value]			Values to be logged
* @return		{self}
* @see			date_time_string, date_current_datetime, show_debug_message
*/
function log() {
	// Attach current time to logged message
	var logString = "[" + date_time_string(date_current_datetime()) + "]";

	// Create string from arguments
	for(var i = 0; i < argument_count; i++) {
		logString += " " + string(argument[i]);
	}

	show_debug_message(logString);
}

