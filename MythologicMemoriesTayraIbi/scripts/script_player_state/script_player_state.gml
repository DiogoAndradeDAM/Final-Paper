function PlayerStateStop() constructor
{
	name="Stop"
	initialize = function()
	{
		obj_player.image_speed=0
		obj_player.hspd=0
		obj_player.vspd=0
		obj_player.dirx=0
	}
	
	handle_input = function()
	{
		
	}
	
	update = function()
	{
		
	}
}

function PlayerStateIdle() constructor
{
	name="Idle"
	initialize = function()
	{
		obj_player.image_speed = 1
		obj_player.sprite_index = spr_ayira_idle;
		obj_player.image_xscale = obj_player.directionh;
	}
	handle_input = function()
	{
		player_get_input()
	}
	update = function()
	{
		if !keyboard_check_pressed(vk_space) and !obj_player.is_on_floor{
			obj_player.vspd += obj_player.grav	
			obj_player.state = obj_player.state_moving
			obj_player.state.initialize()
		}
		obj_player.hspd = obj_player.dirx * obj_player.spd
		if(obj_player.hspd != 0 or obj_player.vspd != 0){
			obj_player.state = obj_player.state_moving
			obj_player.state.initialize()
		}else{
			
		}
		obj_player.dirx = 0
	}
}
function PlayerStateMoviment() constructor
{
	name="Moviment"
	initialize = function()
	{
		if(obj_player.vspd < 0){
			obj_player.sprite_index = spr_ayira_jump;
		}else if(obj_player.vspd > 0){
			obj_player.sprite_index = spr_ayira_fall;
		}else{
			obj_player.sprite_index = spr_ayira_moviment;
		}
		obj_player.image_xscale = obj_player.directionh;

	}
	handle_input = function()
	{
		player_get_input()
		
	}
	update = function()
	{
		if !keyboard_check_pressed(vk_space) and !obj_player.is_on_floor{
			obj_player.vspd += obj_player.grav	
			obj_player.state = obj_player.state_moving
			obj_player.state.initialize()
		}
		
		obj_player.hspd = obj_player.dirx * obj_player.spd
		if(obj_player.hspd != 0 or obj_player.vspd != 0){
			obj_player.state = obj_player.state_moving
			obj_player.state.initialize()
		}else{
			obj_player.state = obj_player.state_idle
			obj_player.state.initialize()
		}
		obj_player.dirx = 0
		
	}
}
function PlayerStateAttack() constructor
{
	name="Attack"
	initialize = function()
	{
		obj_player.is_attacking = true
		obj_player.alarm[0]=60 * (6/10)
		obj_player.image_index = 0
		obj_player.sprite_index = spr_ayira_attack;
		obj_player.image_xscale = obj_player.directionh;
	}
	handle_input = function()
	{
		
	}
	update = function()
	{
		if !obj_player.is_on_floor{
			obj_player.vspd += obj_player.grav	
		}else{
			obj_player.dirx = 0	
			obj_player.hspd = 0
		}
		
		if(obj_player.image_index == 3){
			var _hit = instance_create_layer(
				obj_player.x+(16*obj_player.directionh),
				obj_player.y-32, 
				"Collisions", 
				obj_player_hitbox);
			_hit.damage = 1;
			_hit.alarm[0] = 2;
			_hit.image_xscale = obj_player.directionh
		}
	}
}
function PlayerStateHurt() constructor
{
	name="Hurt"
	initialize = function()
	{
		obj_player.is_hurt = true
		obj_player.alarm[1]=60
		obj_player.sprite_index = spr_ayira_hurt;
		obj_player.image_xscale = obj_player.directionh;
		obj_player.dirx = obj_player.directionh*-1
		obj_player.hspd = 0
		obj_player.vspd -= 5;
		
	}
	handle_input = function()
	{
		
	}
	update = function()
	{
		if !obj_player.is_on_floor{
			obj_player.vspd += obj_player.grav	
		}
		
		if(obj_player.alarm[1] <= 30){
			obj_player.state = obj_player.state_idle;
			obj_player.state.initialize();
		}
		
		obj_player.hspd = obj_player.dirx * 4;
	}
}