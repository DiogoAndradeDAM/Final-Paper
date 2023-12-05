if(keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_escape)){
	obj_player.state = obj_player.state_idle;
	obj_player.state.initialize();
	instance_destroy(self)
}

if(keyboard_check_pressed(ord("D"))){ menu_options_index++ }
if(keyboard_check_pressed(ord("A"))){ menu_options_index-- }

menu_options_index = clamp(menu_options_index, 0, array_length(menu_options_arr)-1)


if(keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)){
	switch(menu_options_index)
	{
		case 0: instance_create_layer(0,0,"Hud", obj_books); break;
		case 1: instance_create_layer(0,0,"Hud", obj_items); break;
		case 2: instance_create_layer(0,0,"Hud", obj_options); break;
		case 3: room_goto(room_mainmenu); break;
	}
	instance_destroy(self)
}