/// @description Builds all the stats and sets values for the dialogue box.
//freezes the player while it exists
if(instance_exists(obj_PlayerCharacter)){
obj_PlayerCharacter.freeze = true
}
#region The basic stats of the dialogue box
depth = -999;



textbox_width = camera_get_view_width(view_camera[0]) * 0.549048316

textbox_height = camera_get_view_height(view_camera[0]) * .3125
show_debug_message(string_concat("Width of textbox: ", string(textbox_width), "\nHeight of textbox: ", string(textbox_height)))
border = 10;

if(camera_get_view_width(view_camera[0]) == 1366){
scale_w = 1
} else {
	scale_w = .6875
}

if(camera_get_view_height(view_camera[0]) == 768){
scale_h = 1
} else {
	scale_h = .6875
}

line_seperation = 20;

line_width = textbox_width + 15
show_debug_message("Line width: " +string(line_width))

textbox_sprite = spr_textbox_place_holder;

textbox_image = 0;

textbox_image_speed = 0;
textbox_width_x = camera_get_view_width(view_camera[0])/4;
textbox_height_y = camera_get_view_height(view_camera[0])*1.35;
textbox_x = camera_get_view_x(view_camera[0]) + (textbox_width_x);
textbox_y = camera_get_view_y(view_camera[0]) + (textbox_height_y/1.96);
show_debug_message(string_concat("Width: ", textbox_width_x))
show_debug_message(string_concat("Height: ", textbox_height_y))
show_debug_message(string_concat("x: ", textbox_x))
show_debug_message(string_concat("y: ", textbox_y))
#endregion

#region The text itself.
page = 0;
page_number = 0;
text[0] = "";
draw_char = 0;
text_speed = .85;

setup = false;
#endregion

#region Sprite box
spritebox_size = 100;
spritebox_border = 20
spritebox_image = 0
#endregion

#region Response box
responses[0] = ""
response_number = 0
selected = 0;
draw_response = false
#endregion
