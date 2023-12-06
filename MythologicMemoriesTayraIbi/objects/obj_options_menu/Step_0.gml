if(keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){
	options_index++
}
if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))){
	options_index--
}

options_index = clamp(options_index, 0, array_length(options)-1)


if(keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)){
	switch(options_index)
	{
		case 0: 
			obj_transition.is_transition = true;
			obj_transition.room_to_go = room_village;
			obj_transition.destination_x = 200;
			obj_transition.destination_y = 200;
			break;
		case 1: 
			obj_transition.is_transition = true;
			obj_transition.room_to_go = noone;
			obj_transition.destination_x = 200;
			obj_transition.destination_y = 200;
			game_terminated = true
			break;
	}
}
if(game_terminated and obj_transition.alpha == 0.9){
	game_end(ev_game_end)	
}