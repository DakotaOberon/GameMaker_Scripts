/**
* Create an object at the calling objects x, y, and depth
*
* @function		instance_create(obj, [var_struct])
* @param		{Object Asset}		obj			The object index of the object to create an instance of
* @param		{Object Asset}		depth		The depth to assign the created instance to
* @param		{Struct}			var_struct	A struct with variables to assign to the new instance
* @return		{type}
* @see    references
*/
function instance_create_at_mouse(obj, _depth, var_struct=undefined) {
	return instance_create_depth(mouse_x, mouse_y, _depth, obj, var_struct);
}
