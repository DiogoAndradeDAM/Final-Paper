if(keyboard_check_pressed(vk_escape)){
	instance_destroy(self)	
	obj_player.state = obj_player.state_idle;
	obj_player.state.initialize();
}

if(keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)){ page_index++ }
if(keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)){ page_index-- }
page_index = clamp(page_index, 0, 2)

if(keyboard_check_pressed(ord("E"))){ book_index++ }
if(keyboard_check_pressed(ord("Q"))){ book_index-- }
book_index = clamp(book_index,0,1)