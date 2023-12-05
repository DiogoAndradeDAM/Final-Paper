if(keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("E"))){
	instance_destroy(self)	
	obj_player.state = obj_player.state_idle;
	obj_player.state.initialize();
}
