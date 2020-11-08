///Mouse Pos
if (point_in_rectangle(mouse_x, mouse_y, 33, 382, 130, 480)){
	window_set_cursor(cr_handpoint);
	cursor = true;
} else {
	cursor = false;
	window_set_cursor(cr_default);
}
	

if (cursor == true){
	if (mouse_check_button_pressed(mb_left)){
		global.mpressed = true;
	}
		if (global.mpressed == true){
			audio_play_sound(snd_test, 1, 0);
			global.mpressed = false;
	}
}
