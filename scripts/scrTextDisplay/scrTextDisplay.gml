function scrTextDisplay(argument0, argument1, argument2, argument3, argument4, argument5) {
	/*

		PLEASE NOTE;
		Original creator: 
		https://forum.yoyogames.com/index.php?threads/draw-your-text-one-character-at-a-time.1956/
		https://forum.yoyogames.com/index.php?members/jazzzar.1707/

		This code has just been edited to be cleaner with more features.
		Follow me if you're interested: @_Tydes

	*/


	/// @function scrTextDisplay(string, xPos, yPos, spacing)
	/// @description Draw string per character
	/// @param {real} string the string you want to draw
	/// @param {real} xPos X Position of the string
	/// @param {real} yPos Y Position of the string
	/// @param {real} spacing the spacing between each character (0 for default)
	/// @param {real} boolCharacter if you want an extra character
	/// @param {real} character what character?

	str			    = argument0; // The string to draw
	xpos		    = argument1; // X position of the text
	ypos		    = argument2; // Y position of the text
	spacing         = argument3; // Spacing of text
	extraCharacterB = argument4; // if you want an extra character at the end
	extraCharacter  = argument5; // what character?

	cur_width	   = 0;					 // This is used to see the current width of the "already drawn" characters
	len			   = string_length(str); // The length of the string used to seperate the string into single characters(using an array)
	chars[len-1]   = 0;					 // The array that holds every single character in the string
	line		   = 0;					 // The line variable determines how much to jump down from the current postion based on the height of the chars

	var i, j, g;
	for (i = len-1; i >= 0; i--)			//main loop that seperates the characters and puts them into an array
	chars[i] = string_char_at(str, i + 1);
	cur_width += string_width(chars[0]);	//add the first character's width to the total width

	for (j = 0; j < chars_drawn; j++)	{
	    if (chars[j] == "#")	{				// the "#" classes as a new line
	        line += string_height(chars[j-1]);
	        cur_width = 0;
	    }	else	{
			draw_text(xpos + cur_width, ypos + line, chars[j]);
			cur_width += string_width(chars[j]) + spacing;
		}
	 }	
 
	if (extraCharacterB == true)	{
		draw_text(xpos + (cur_width + 1), ypos + line, argument5);
	}
		

		
		


}
