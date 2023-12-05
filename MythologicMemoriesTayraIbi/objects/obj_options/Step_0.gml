if(keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("E"))){
	instance_destroy(self)	
	obj_player.state = obj_player.state_idle;
	obj_player.state.initialize();
}

if(keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){ options_index++ }
if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))){ options_index-- }
options_index = clamp(options_index,0, array_length(options)-1)

if(keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)){
	switch(options_index)
	{
		case 0: global.is_fullscreen = !global.is_fullscreen; break;	
		case 1: global.sound = (global.sound == 100) ? 0 : 100; break;
		case 2: break;
		case 3: break;
		case 4: obj_player.state = obj_player.state_idle; obj_player.state.initialize(); instance_destroy(self); break;
	}
}