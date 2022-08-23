enum __layerSequenceItemType {
	__track,
	__keyframe,
	__keyframeData
}

// @description	Deep copy a sequence
// The purpose of this function is to give the freedom of changing values without affecting the parent sequence
// This is a huge function but runs without issues in my experience
//
// @function	layer_sequence_copy(_layer_id, _x, _y, _sequence_id)
// @parameter	{String}	_layer_id		The unique ID value of the instance layer to target
// @parameter	{Real}		_x				The x position in the room to create the sequence at
// @parameter	{Real}		_y				The y position in the room to create the sequence at
// @parameter	{Sequence}	_sequence_id	The sequence asset to copy
// @return		{Sequence Element ID}
function layer_sequence_copy(_layer_id, _x, _y, _sequence_id) {
	#region Initialize values

	var _sequence_struct = sequence_get(_sequence_id);

	var _sequence = sequence_create();

	#endregion

	#region Set upper level struct values

	_sequence.name					=	_sequence_struct.name;
	_sequence.length				=	_sequence_struct.length;
	_sequence.playbackSpeed			=	_sequence_struct.playbackSpeed;
	_sequence.playbackSpeedType		=	_sequence_struct.playbackSpeedType;
	_sequence.yorigin				=	_sequence_struct.yorigin;
	_sequence.xorigin				=	_sequence_struct.xorigin;
	_sequence.loopmode				=	_sequence_struct.loopmode;
	_sequence.volume				=	_sequence_struct.volume;

	#endregion

	#region Copy Track information
	
	_sequence.tracks = __layer_sequence_copy_helper(_sequence_struct.tracks);

	#endregion

	return layer_sequence_create(_layer_id, _x, _y, _sequence);
}

function __layer_sequence_get_item_type(_item) {
	if (typeof(_item) != "struct") {
		return -1;
	}

	if (variable_struct_get(_item, "type")) {
		return __layerSequenceItemType.__track;
	}

	if (variable_struct_get(_item, "frame")) {
		return __layerSequenceItemType.__keyframe;
	}

	if (variable_struct_get(_item, "channel")) {
		return __layerSequenceItemType.__keyframeData;	
	}

	return -1;
}

function __layer_sequence_copy_helper(_array_of_items, _type=seqtracktype_graphic) {
	if (typeof(_array_of_items) == "array") {
		var _length_of_items = array_length(_array_of_items);

		var _new_array = array_create(_length_of_items);

		for (var _index = 0; _index < _length_of_items; _index++) {
			var _item = _array_of_items[_index];

			var _item_type = __layer_sequence_get_item_type(_item);

			var _new_item = undefined;

			switch (_item_type) {
				case __layerSequenceItemType.__track:
					_new_item = __layer_sequence_copy_track(_item);
				break;
				case __layerSequenceItemType.__keyframe:
					_new_item = __layer_sequence_copy_keyframe(_item, _type);
				break;
				case __layerSequenceItemType.__keyframeData:
					_new_item = __layer_sequence_copy_channel(_item, _type);
				break;
				default:
					_new_item = _item;
				break;
			}

			_new_array[_index] = _new_item;
		}

		return _new_array;
	}

	return _array_of_items;
}

function __layer_sequence_copy_track(_track) {
	var _new_track = sequence_track_new(_track.type);

	_new_track.name		=	_track.name;
	_new_track.visible	=	_track.visible;

	_new_track.interpolation = true;

	if (variable_struct_exists(_track, "interpolation")) {
		_new_track.interpolation = _track.interpolation;
	}

	if (array_length(_track.tracks) > 0) {
		_new_track.tracks = __layer_sequence_copy_helper(_track.tracks);
	}

	if (array_length(_track.keyframes) > 0) {
		_new_track.keyframes = __layer_sequence_copy_helper(_track.keyframes, _track.type);
	}

	return _new_track;
}

function __layer_sequence_copy_keyframe(_keyframe, _type=seqtracktype_graphic) {
	var _new_keyframe		=	sequence_keyframe_new(_type);

	_new_keyframe.frame		=	_keyframe.frame;
	_new_keyframe.length	=	_keyframe.length;
	_new_keyframe.stretch	=	_keyframe.stretch;

	_new_keyframe.channels	=	__layer_sequence_copy_helper(_keyframe.channels, _type);

	return _new_keyframe
}

function __layer_sequence_copy_channel(_channel, _type=seqtracktype_graphic) {
	var _new_channel = sequence_keyframedata_new(_type);

	_new_channel.channel = _channel.channel;

	switch (_type) {
		case seqtracktype_graphic:
			_new_channel.spriteIndex	=	_channel.spriteIndex;
		break;
		case seqtracktype_audio:
			_new_channel.soundIndex		=	_channel.soundIndex;
			_new_channel.playbackMode	=	_channel.playbackMode;
		break;
		case seqtracktype_instance:
			_new_channel.objectIndex	=	_channel.objectIndex;
		break;
		case seqtracktype_sequence:
			_new_channel.sequence		=	_channel.sequence;
		break;
		case seqtracktype_colour:
			_new_channel.colour			=	_channel.colour;
		break;
		case seqtracktype_real:
			if (_channel.curve == -1) {
				_new_channel.value		=	_channel.value;
			} else {
				_new_channel.curve		=	animcurve_get(_channel.curve);
			}
		break;
		case seqtracktype_message:
			_new_channel.events			=	_channel.events;
		break;
		case seqtracktype_moment:
			_new_channel.event			=	_channel.event;
		break;
		case seqtracktype_text:
			_new_channel.text			=	_channel.text;
			_new_channel.wrap			=	_channel.wrap;
			_new_channel.alignmentH		=	_channel.alignmentH;
			_new_channel.alignmentV		=	_channel.alignmentV;
			_new_channel.fontIndex		=	_channel.fontIndex;
		break;
	}

	return _new_channel;
}
