// @description	Runs sigma notation
//
// @function	sigma(_start, _end, _iter)
// @parameter	{Real}		_start		Where to begin iteration adding
// @parameter	{Real}		_end		Where to end iteration adding
// @parameter	{Real}		_iter		Value to iterate next number by
// @return		{Real}
function sigma(_start, _end, _iter) {
	var _value = 0;

	for(var _i = _start; _i <= _end; _i++) {
		_value += (_i * _iter);
	}

	return _value;
}
