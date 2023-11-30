if(keyboard_check_pressed(vk_f4))
{
	global.is_fullscreen =	!global.is_fullscreen
}

window_set_fullscreen(global.is_fullscreen)

if(keyboard_check_pressed(vk_f2)){
	resolution_scale=2	
}
if(keyboard_check_pressed(vk_f1)){
	resolution_scale=1
}


