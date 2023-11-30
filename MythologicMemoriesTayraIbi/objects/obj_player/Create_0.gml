//Moviment
directionh=1
dirx=0
hspd=0
vspd=0
spd=7
grav=0.7
jumpf=12
is_on_floor=true

//Status
MAX_LIFE=100
life=MAX_LIFE;


//States
is_attacking=false
is_hurt=false

state_idle = new PlayerStateIdle()
state_moving = new PlayerStateMoviment()
state_attacking = new PlayerStateAttack()
state_hurt = new PlayerStateHurt()
state=state_idle

