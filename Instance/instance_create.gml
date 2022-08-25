// @description	Simplified instance creation function
//
// @function	instance_create(_obj, [_var_struct])
// @parameter	{Object}	_obj		The object index of the object to create an instance of
// @parameter	{Struct}	_var_struct	A struct with variables to assign to the new instance
// @return		{Instance ID}
function instance_create(_obj, _var_struct=undefined) {
	return instance_create_depth(x, y, depth, _obj, _var_struct);
}
