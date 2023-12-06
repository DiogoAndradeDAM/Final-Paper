draw_set_font(font_pixantiqua)
draw_set_halign(fa_left)

for(var _i=0; _i<array_length(options); _i++){
	var _aux=(options_index == _i) ? 20 : 0;
	var _color=(options_index == _i) ? c_yellow : c_white
	draw_set_color(_color)
	draw_text(
		70+_aux, 
		global.view_height*obj_game.resolution_scale/2+(font_get_size(font_pixantiqua)*_i)+(20*_i),
		$"{options[@ _i]}"
		)
}

draw_set_font(-1)
draw_set_halign(-1)

