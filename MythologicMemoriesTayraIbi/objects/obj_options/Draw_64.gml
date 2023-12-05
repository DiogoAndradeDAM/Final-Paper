draw_menu_rect_center(
	global.view_width*obj_game.resolution_scale,
	global.view_height*obj_game.resolution_scale,
	70,
	120,
	2)

draw_set_font(font_pixantiqua)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_center)
for(var _i=0; _i<array_length(options); _i++){
	var _aux = "---"
	if(options[@ _i] != 0){ _aux = options[@ _i]}
	draw_text(
		global.view_width*obj_game.resolution_scale/2,
		(global.view_height*obj_game.resolution_scale/2)-120+(_i*font_get_size(font_pixantiqua)+(_i*34)+10),
		$"{_aux}"
	)	
}

draw_set_color(c_white)
draw_set_alpha(0.5)
draw_rectangle(
	(global.view_width*obj_game.resolution_scale/2)-70,
	(global.view_height*obj_game.resolution_scale/2)-120+(options_index*font_get_size(font_pixantiqua))+(options_index*34)+10,
	(global.view_width*obj_game.resolution_scale/2)+70,
	(global.view_height*obj_game.resolution_scale/2)-120+(options_index*font_get_size(font_pixantiqua))+(options_index*34)+10+font_get_size(font_pixantiqua)+15,
	0
)
draw_set_alpha(1)
draw_set_halign(-1)