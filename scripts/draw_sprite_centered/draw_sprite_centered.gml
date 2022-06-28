/**
* Get the x value of the center of the sprite
*
* @function		draw_sprite_centered(sprite, subimg, x1, y1)
* @param		{type}		args			Description of arg
* @return		{type}
* @see			references
*/

function draw_sprite_centered(sprite, subimg, x1, y1) {
	var center_x = sprite_get_width(sprite) / 2;
	var center_y = sprite_get_height(sprite) / 2;

	var origin_x = sprite_get_xoffset(sprite);
	var origin_y = sprite_get_yoffset(sprite);

	var x2 = x1 + (origin_x - center_x);
	var y2 = y1 + (origin_y - center_y);

	draw_sprite(sprite, subimg, x2, y2);
}

