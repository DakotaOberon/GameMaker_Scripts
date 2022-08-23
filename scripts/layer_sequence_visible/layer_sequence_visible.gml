// @description	Description
//
// @function	layer_sequence_visible(_sequence_id, _visibility)
// @parameter	{Sequence Element ID}	_sequence_id	The unique ID value of the sequence element to target
// @parameter	{Boolean}				_visibility		Visibility value to set
// @return		{Boolean}
function layer_sequence_visible(_sequence_id, _visibility) {
	var _sequence_instance_struct = layer_sequence_get_instance(_sequence_id);

	var _active_tracks = _sequence_instance_struct.activeTracks;

	var _tracks_length = array_length(_active_tracks);

	if (_tracks_length == 0) {
		return false;
	}

	for (var _index = 0; _index < _tracks_length; _index++) {
		_sequence_instance_struct.activeTracks[_index].track.visible = _visibility;
	}

	return true;
}
