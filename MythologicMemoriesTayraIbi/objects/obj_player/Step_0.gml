state.handle_input()

state.update()

if place_meeting(x,y+1,obj_wall){
	is_on_floor = true	
}else{
	is_on_floor = false
}

if(life <= 0){
	global.player_death = true;	
}
if(life > MAX_LIFE){ life = MAX_LIFE;}


x = clamp(x, 0+32, room_width-32)
y = clamp(y, 0+32, room_height-32)


collision_in_wall()

x += hspd
y += vspd



