/**
* Check if the mouse is colliding with an instance
*
* @function		instance_mouse_hovering([obj])
* @param		{instance}		[obj]			Instance to check
* @return		{boolean}
* @see			collision_point
*/
function instance_mouse_hovering(obj=self) {
	if (collision_point(mouse_x, mouse_y, obj, 0, 0) != noone) {
		return true;
	}

	return false;
}

