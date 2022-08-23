// @description	Draw a sprite centered on the coordinates
//
// @function	draw_sprite_centered(_sprite, _subimg, _x1, _y1)
// @parameter	{Sprite}	_sprite		The index of the sprite to draw
// @parameter	{Real}		_subimg		The sub-image (frame) of the sprite to draw
// @parameter	{Real}		_x1			The x coordinate of where to draw the sprite
// @parameter	{Real}		_y1			The y coordinate of where to draw the sprite
// @return		{N/A}
function draw_sprite_centered(_sprite, _subimg, _x1, _y1) {
	var _center_x = sprite_get_width(_sprite) / 2;
	var _center_y = sprite_get_height(_sprite) / 2;

	var _origin_x = sprite_get_xoffset(_sprite);
	var _origin_y = sprite_get_yoffset(_sprite);

	var _new_x2 = _x1 + (_origin_x - _center_x);
	var _new_y2 = _y1 + (_origin_y - _center_y);

	draw_sprite(_sprite, _subimg, _new_x2, _new_y2);
}
