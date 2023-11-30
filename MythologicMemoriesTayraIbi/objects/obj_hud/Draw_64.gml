draw_sprite(spr_backpack_icon,0, global.view_width-sprite_get_width(spr_backpack_icon)-16, 32)
draw_set_font(font_alphabeta)
draw_text(global.view_width-sprite_get_width(spr_backpack_icon)-16,32, string("E"))

draw_set_font(-1)

//Draw Player Status
draw_sprite_ext(spr_ayira_icon, 0, 10, 10, 2, 2, 0, c_white, 1)
//Draw life bar
draw_set_color(c_gray)
draw_rectangle(10+sprite_get_width(spr_ayira_icon)*2, 15, obj_player.MAX_LIFE*3, 25, 0)
if(obj_player.life >= 1){
	draw_set_color(c_red);
	draw_rectangle(10+sprite_get_width(spr_ayira_icon)*2, 15, obj_player.life*3, 25, 0)
}
draw_set_color(c_white)
draw_sprite_ext(spr_dream_catcher, 0, 10, 100, 2, 2, 0, c_white, 1)