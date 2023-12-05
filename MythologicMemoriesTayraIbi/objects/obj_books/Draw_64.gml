draw_menu_rect_center(
	global.view_width*obj_game.resolution_scale,
	global.view_height*obj_game.resolution_scale,
	rect_width,
	rect_height,
	2)
	
draw_menu_rect(
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height),
	50,
	24,
	2)
	
draw_menu_rect(
	(((global.view_width*obj_game.resolution_scale)/2)+rect_width)-100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height),
	50,
	24,
	2)

draw_set_color(c_white)
