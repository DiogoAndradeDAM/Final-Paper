draw_menu_rect_center(
	global.view_width*obj_game.resolution_scale,
	global.view_height*obj_game.resolution_scale,
	rect_width,
	rect_height,
	2)

for(var _i=0; _i<array_length(obj_player.items); _i++){
	var _aux = "---"
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(font_pixantiqua)
	if(obj_player.items[@ _i] != 0){
		_aux = obj_player.items[@ _i];
	}
	draw_text(
		((global.view_width*obj_game.resolution_scale)/2),
		((global.view_height*obj_game.resolution_scale)/2-rect_height)+10+(font_get_size(font_pixantiqua)*_i)+(10*_i),
		_aux
	)
}

draw_set_halign(-1)
