/// @description Causes the box to check and then draw the text it should be at any given point.
player_controls()
var textbox_width_x = camera_get_view_width(view_camera[0])/4.5;
var textbox_height_y = camera_get_view_height(view_camera[0])/8;
var textbox_x = camera_get_view_x(view_camera[0]) + (textbox_width_x/2);
var textbox_y = camera_get_view_y(view_camera[0]) + (textbox_height_y * 6);

//setup
if (!setup){
	//Sets the font details for the textbox
	setup = true;
	draw_set_font(font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//Loop through the pages
	page_number = array_length(text);

//Cycles through the pages within the text in order to write the proper text.
for (var p = 0; p < page_number; p++){
	text_length[p] = string_length(text[p]);
	
	//get the x position of the textbox
	text_offset_x[p] = 50;
}
}

//Writing the text to the dialogue box and setting the speed of the animation player.
if draw_char < text_length[page]{
draw_char += text_speed;
draw_char = clamp(draw_char, 0, text_length[page]);
}



//Flip through pages
if progress_dialogue {
//If the typing is done go to the next pages
if draw_char == text_length[page] {
	//Next page
	if (page < (page_number -1)) {
		page++;
		draw_response = false
		draw_char = 0;
	}
	else
	{
		instance_destroy()
		obj_Trigger.spawnable = false
		obj_Trigger.alarm[0] = 200
		
	}
}
//If not done typing
else
{
	draw_char = text_length[page];
}
}
	
//Draw the Textbox
var textbox_sprite_width = sprite_get_width(textbox_sprite);
var textbox_sprite_height = sprite_get_height(textbox_sprite);


//Draw the back of the textbox
draw_sprite_ext(textbox_sprite, textbox_image, textbox_x + text_offset_x[page], textbox_y, textbox_width/textbox_sprite_width, textbox_height/textbox_sprite_height, 0, c_gray, 1);

//Draw the text
var draw_Text = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_offset_x[page] + border, textbox_y + border, draw_Text, line_seperation, line_width);

//Draw the responses
var response_x = textbox_x + text_offset_x[page] + border
var response_y = textbox_y + (string_height_ext(text[page], line_seperation, line_width)) + 25
if(draw_char == text_length[page]){
	for(var str = 0; str < response_number; str++;){
		if(selected == str)
		draw_text_ext(response_x, response_y + (str * 60), ">", line_seperation, line_width)
		draw_text_ext(response_x + 20, response_y + (str * 60), responses[str], line_seperation, line_width)
	}
}