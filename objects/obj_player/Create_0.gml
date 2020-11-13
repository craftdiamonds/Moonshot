///Variables
//Moving
grav = 0.5;
hsp = 0;
vsp = 0;
jumpspeed = 7;
movespeed = 4;
jPower = -0.1;
onGround = place_meeting(x+hsp,y, obj_floor);


//Orientation
face = 0;
run = 0; 

//Gun
cooldown = 0;

//Health
hp = 5; 
invis = false;
iTimer = 100;

//Jetpack Vars
global.jetpack = true; 
jetpack = false; 
jTimer = 100; 
jUsable = true; 