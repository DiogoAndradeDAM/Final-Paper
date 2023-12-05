draw_sprite(spr_backpack_icon,0, global.view_width-sprite_get_width(spr_backpack_icon)-16, 32)
draw_set_font(font_pixantiqua)
draw_text(global.view_width-sprite_get_width(spr_backpack_icon)-16,32, string("E"))
if(instance_exists(obj_inventory) or instance_exists(obj_books) or instance_exists(obj_items) or instance_exists(obj_options)){
	draw_text(global.view_width-sprite_get_width(spr_backpack_icon)-16,64, string("ESC"))
}

draw_set_font(-1)

//Draw Player Status
draw_sprite_ext(spr_ayira_icon, 0, 10, 10, 2, 2, 0, c_white, 1)
//Draw life bar
draw_set_color(c_black)
draw_rectangle(10+sprite_get_width(spr_ayira_icon)*2, 15, obj_player.MAX_LIFE*3, 25, 0)
if(obj_player.life >= 1){
	/*
	draw_set_color(c_red);
	draw_rectangle(10+sprite_get_width(spr_ayira_icon)*2, 15, obj_player.life*3, 25, 0)
	*/
	draw_sprite_stretched(spr_healthbar,0,10+sprite_get_width(spr_ayira_icon)*2, 15, obj_player.life*3, 10)
}
draw_set_color(c_white)
draw_sprite_ext(spr_dream_catcher, 0, 26, 100, 1, 1, 0, c_white, 1)
