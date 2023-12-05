draw_menu_rect_center(
	global.view_width*obj_game.resolution_scale,
	global.view_height*obj_game.resolution_scale,
	rect_width,
	rect_height,
	2)
	
draw_menu_rect(
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+24,
	50,
	48,
	2)
draw_set_color(c_white)
draw_set_font(font_alphabeta)
draw_set_halign(fa_center)
draw_text(
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)-15,
	$"Q - E")
draw_sprite(
	spr_compendio_flora,
	0,
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+60,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+30)
draw_sprite(
	spr_compendio_mythology,
	0,
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+110,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+30)
	
draw_set_alpha(0.5)
draw_rectangle(
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+60+(book_index*50)-8,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+30-8,
	(((global.view_width*obj_game.resolution_scale)/2)-rect_width)+60+(book_index*50)+40,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+30+40,
	0)
draw_set_alpha(1)
	
	
draw_menu_rect(
	(((global.view_width*obj_game.resolution_scale)/2)+rect_width)-100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+24,
	50,
	48,
	2)
draw_text(
	(((global.view_width*obj_game.resolution_scale)/2)+rect_width)-100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)-15,
	$"<-  ->")
draw_text(
	(((global.view_width*obj_game.resolution_scale)/2)+rect_width)-100,
	(((global.view_height*obj_game.resolution_scale)/2)-rect_height)+30,
	$"{page_index+1}")

draw_set_color(c_white)
draw_set_halign(-1)
draw_set_font(-1)