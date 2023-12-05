obj_transition.is_transition = true
obj_transition.room_to_go = other.room_to_go
obj_transition.destination_x = other.player_x
obj_transition.destination_y = other.player_y
state = state_stopped
state.initialize()
alarm[2]=60