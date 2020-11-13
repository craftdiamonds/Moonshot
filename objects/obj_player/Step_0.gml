//React to inputs
key_right = keyboard_check((ord("D")));
key_left = -keyboard_check((ord("A")));

if(jetpack == false){
key_jump = keyboard_check_pressed((ord("W")));
}

key_ePack = keyboard_check_pressed(vk_shift);
key_jetpack = keyboard_check((ord("W")));

var move = key_left + key_right;
hsp = move * movespeed;
vsp = vsp + grav

if keyboard_check_direct((ord("W"))){
vsp = vsp - 0.05;
}

if (keyboard_check((ord("D")))){
	face = 0;
}
    
if (keyboard_check((ord("A")))){
	run = 1;
	face = 1;
}
	
if (hsp > 0.2){
	run = 1; 
	} else {
	run = 0;
}

if(onGround){
    if(key_jump){
        vsp = jPower;
    }
}
	
if (place_meeting(x,y+1,obj_floor))
{
	vsp = key_jump * -jumpspeed
}


//Computer Laser Gun
if keyboard_check(vk_space) && cooldown < 1 {
	if (face == 1){
	instance_create_depth(obj_player.x+20, obj_player.y, -1, obj_bullet); 
	obj_bullet.hspeed = -20;
	cooldown = 70; 
	} else {
	instance_create_depth(obj_player.x+20, obj_player.y, -1, obj_bullet); 
	obj_bullet.hspeed = 20;
	cooldown = 70; 
	}
}
cooldown = cooldown - 1; 
if cooldown <= 0 cooldown = 0

//Calculating Health
if (place_meeting(x,y,obj_enemy)) && invis == false{
	hp = hp - irandom_range(1,3); 
	invis = true;
}

if (invis == true) {
   iTimer = iTimer - 1; 
	if (iTimer <= 0){
		invis = false;
		iTimer = 100;
	}
}

//Calculating Death
if (hp <= 0){
	game_restart(); 
}

//Jetpack Key Item
if global.jetpack == true{
	if key_ePack && jetpack == false{ 
		jetpack = true;
	} else if key_ePack && jetpack == true {
		jetpack = false;
	}
	
	if jetpack==true && key_jetpack && jUsable == true{
		grav = 0;
		jTimer = jTimer - 1; 
		obj_player.y = obj_player.y - 1
			} else {
				grav = 0.5
			}
				if (jTimer <= 0){
					jetpack = false;
					jTimer = 100; 
					grav = 0.5
					jUsable = false; 
					alarm[0] = 1000; 
	}
}

//Collision, Horizontal
if (place_meeting(x+hsp,y, obj_floor))
{
	while(!place_meeting(x+sign(hsp),y,obj_floor))
	  {
	      x += sign(hsp);
	  }
	hsp = 0;
}

x += hsp;

//Collision Verticle
if (place_meeting(x,y+vsp,obj_floor))
{
	  while(!place_meeting(x,y+sign(vsp),obj_floor))
	 {
		   y += sign(vsp);
		}
	 vsp = 0;
	}
y += vsp;