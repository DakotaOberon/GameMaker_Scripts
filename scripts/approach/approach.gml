// @description	Gets a value from origin to goal moved by amount
//
// @function	approach(_origin, _goal, _amount)
// @parameter	{Real}		_origin			Starting value
// @parameter	{Real}		_goal			End goal value
// @parameter	{Real}		_amount			Amount to move value by
// @return		{Real}
function approach(_origin, _goal, _amount) {
	if (_origin < _goal) {
		return min(_origin + _amount, _goal);
	}

	return max(_origin - _amount, _goal);
}
