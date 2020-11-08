if (face == 1){
instance_create_depth(obj_player.x+20, obj_player.y, -1, obj_bullet); 
obj_bullet.hspeed = -20;
} else {
instance_create_depth(obj_player.x-20, obj_player.y, -1, obj_bullet); 
obj_bullet.hspeed = 20;
} 
