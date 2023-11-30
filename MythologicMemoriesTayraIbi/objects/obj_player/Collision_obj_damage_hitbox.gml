if(!is_hurt){
	life -= other.damage
	state = state_hurt
	state.initialize()
}