/// @description Drawing the dialogue box itself.
player_controls()
textbox_width_x = camera_get_view_width(view_camera[0])/4;
textbox_height_y = camera_get_view_height(view_camera[0])*1.35;
textbox_x = camera_get_view_x(view_camera[0]) + textbox_width_x;
textbox_y = camera_get_view_y(view_camera[0]) + (textbox_height_y/1.96);
//Setting values for spritebox
spritebox_size = sprite_get_width(speaking_sprite)
var spritebox_x = textbox_x - (spritebox_size/1.4);
var spritebox_y = textbox_y - (spritebox_size/2.3);

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

//Writing the text to the dialogue box and settting the speed of the animation player.
if draw_char < text_length[page]{
	spritebox_image = 1
draw_char += text_speed;
draw_char = clamp(draw_char, 0, text_length[page]);
} else {
	spritebox_image = 0;
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
		collect_responses(text[page])
		//show_debug_message(string_concat("Text: " + text[page]))
		//show_debug_message(string_concat("Responses: "+ string(responses)))
		
	}
	else
	{
		show_debug_message(string_concat("Responses: "+ string(responses)))
		respond(responses[selected])
		collect_responses(text[page])
		//
		
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
draw_text_ext_transformed(textbox_x + text_offset_x[page] + border, textbox_y + border, draw_Text, line_seperation, line_width, scale_w, scale_h, 0);


//Draw the sprite box
if(speaking_sprite != noone){
draw_sprite_ext(textbox_sprite, textbox_image, spritebox_x, textbox_y, sprite_get_width(speaking_sprite)/textbox_sprite_width, sprite_get_height(speaking_sprite)/textbox_sprite_height, 0, c_gray, 1);
//Drawing the speaking sprite
draw_sprite_ext(speaking_sprite, spritebox_image, spritebox_x + (10 * border), spritebox_y+(1.4 *sprite_get_height(speaking_sprite)), spritebox_size/(3*textbox_sprite_width), spritebox_size/(3*textbox_sprite_height), 0, c_white, 1)
}
//Draw the responses
var response_x = textbox_x + text_offset_x[page] + border
var response_y = textbox_y + (string_height_ext(text[page], line_seperation, line_width)) + 5
if(draw_char == text_length[page]){
	for(var str = 0; str < response_number; str++;){
		if(selected == str)
		draw_text_ext_transformed(response_x, response_y + (str * 30), ">", line_seperation, line_width, scale_w, scale_h, 0)
		draw_text_ext_transformed(response_x + 12, response_y + (str * 30), responses[str], line_seperation, line_width - (border*2), scale_w, scale_h, 0)
	}
}