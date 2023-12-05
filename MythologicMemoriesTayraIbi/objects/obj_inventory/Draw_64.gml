draw_set_alpha(1)
draw_set_color(c_white)
draw_circle(
	((global.view_width*obj_game.resolution_scale)/2), 
	((global.view_height*obj_game.resolution_scale)/2),
	48*3+2, 0)
draw_set_color(c_black)
draw_circle(
	((global.view_width*obj_game.resolution_scale)/2), 
	((global.view_height*obj_game.resolution_scale)/2),
	48*3, 0)

draw_sprite_ext(
	spr_books_backpack_open, 
	0,
	((global.view_width*obj_game.resolution_scale)/2), 
	((global.view_height*obj_game.resolution_scale)/2),
	4,
	4,
	0,
	c_white,
	1)
draw_set_color(c_white)
draw_roundrect_ext(
	((global.view_width*obj_game.resolution_scale)/2)-200-2, 
	((global.view_height*obj_game.resolution_scale)/2)-32-2,
	((global.view_width*obj_game.resolution_scale)/2)+200+2, 
	((global.view_height*obj_game.resolution_scale)/2)+32+2,
	10,
	10,
	0)
draw_set_color(c_black)
draw_roundrect_ext(
	((global.view_width*obj_game.resolution_scale)/2)-200, 
	((global.view_height*obj_game.resolution_scale)/2)-32,
	((global.view_width*obj_game.resolution_scale)/2)+200, 
	((global.view_height*obj_game.resolution_scale)/2)+32,
	10,
	10,
	0)
	
draw_sprite_ext(
	spr_book_menu_icon, 
	0,
	(global.view_width*obj_game.resolution_scale/2)-200+15,
	(global.view_height*obj_game.resolution_scale/2)-24,
	1,1,0,c_white,1)
draw_sprite_ext(
	spr_items_menu_icon, 
	0,
	(global.view_width*obj_game.resolution_scale/2)-200+117,
	(global.view_height*obj_game.resolution_scale/2)-30,
	2,2,0,c_white,1)
draw_sprite_ext(
	spr_options_menu_icon, 
	0,
	(global.view_width*obj_game.resolution_scale/2)-200+235,
	(global.view_height*obj_game.resolution_scale/2)-24,
	1,1,0,c_white,1)
draw_sprite_ext(
	spr_exit_menu_icon, 
	0,
	(global.view_width*obj_game.resolution_scale/2)-200+340,
	(global.view_height*obj_game.resolution_scale/2)-24,
	1,1,0,c_white,1)
	
draw_set_alpha(0.5)
draw_set_color(c_white)
draw_rectangle(
	(global.view_width*obj_game.resolution_scale/2)-200+10+(110*menu_options_index),
	(global.view_height*obj_game.resolution_scale/2)-30,
	(global.view_width*obj_game.resolution_scale/2)-200+10+(110*menu_options_index)+60,
	(global.view_height*obj_game.resolution_scale/2)+30,
	0
	)

draw_set_alpha(1)


