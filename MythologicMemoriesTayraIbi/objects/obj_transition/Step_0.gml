if(is_transition){
	alpha += 1/60	
}else{
	alpha -= 1/60
}

if(alpha >= 1){
	room_goto(room_to_go)
	obj_player.x = destination_x
	obj_player.y = destination_y
	is_transition = false
}


alpha = clamp(alpha, 0, 1)


