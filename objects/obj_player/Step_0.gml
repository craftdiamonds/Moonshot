///Movement

//Input
key_right = keyboard_check((ord("D")))
key_left = -keyboard_check((ord("A")))
key_jump = keyboard_check((ord("W")))

//React to inputs
move = key_left + key_right;
hsp = move * movespeed;

vsp = vsp + grav

if keyboard_check_direct((ord("W"))){
vsp = vsp - 0.05;
} else {
vsp = vsp + 0.1;
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
	
	
if (place_meeting(x,y+1,obj_floor))
{
	vsp = key_jump * -jumpspeed
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






