

function player_get_input()
{
	if keyboard_check(ord("D")){
				obj_player.directionh = 1
				obj_player.dirx = 1
			}
	if keyboard_check(ord("A")){
				obj_player.directionh = -1
				obj_player.dirx = -1
			}
	if keyboard_check_pressed(vk_space) and obj_player.is_on_floor{
				obj_player.vspd += -obj_player.jumpf
			}
		
	if mouse_check_button_pressed(mb_left) and !obj_player.is_attacking{
				obj_player.state = obj_player.state_attacking
				obj_player.state.initialize()
			}
		
}