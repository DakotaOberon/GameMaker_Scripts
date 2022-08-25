// @description	Check if the mouse is colliding with an instance
//
// @function	instance_mouse_hovering([_obj])
// @parameter	{Instance ID}		[_obj]		Instance to check
// @return		{Boolean}
function instance_mouse_hovering(_obj=self) {
	if (collision_point(mouse_x, mouse_y, _obj, 0, 0) != noone) {
		return true;
	}

	return false;
}
