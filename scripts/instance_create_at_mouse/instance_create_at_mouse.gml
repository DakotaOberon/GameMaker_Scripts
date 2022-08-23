// @description	Create instance at mouse location
//
// @function	instance_create_at_mouse(_obj, [_var_struct])
// @parameter	{Object}	_obj		The object index of the object to create an instance of
// @parameter	{Struct}	_var_struct	A struct with variables to assign to the new instance
// @return		{Instance ID}
function instance_create_at_mouse(_obj, _var_struct=undefined) {
	return instance_create_depth(mouse_x, mouse_y, 0, _obj, _var_struct);
}
