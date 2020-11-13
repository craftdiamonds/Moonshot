if invis == false && face == 0{
draw_sprite(spr_player,1,x,y);
} 

if invis == false && face == 1{
draw_sprite(spr_player_l,1,x,y);
} 

if invis == true && face == 0{
sprite_index = spr_player_invis
draw_sprite(spr_player_invis,1-5,x,y)
}

if invis == true && face == 1{
sprite_index = spr_player_invis_l
draw_sprite(spr_player_invis_l,1-5,x,y) 
} 

draw_text(300,300,alarm[0]);
draw_text(350,350,jUsable);
draw_text(100,300,jetpack);