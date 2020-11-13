//Switching States
if (state=="left")
{
  hsp = -2;
}
else
if (state=="right")
{
  hsp = 2;
}

vsp = vsp + grv;

if (!place_free(x + hsp, y)) if (state=="left") state = "right"; else state = "left";

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_floor))
{
    while (!place_meeting(x+sign(hsp),y,obj_floor))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_floor))
{
    while (!place_meeting(x,y+sign(vsp),obj_floor))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
y = y + vsp;

