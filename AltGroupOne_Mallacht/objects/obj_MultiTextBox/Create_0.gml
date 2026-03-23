/// @description Insert description here
// You can write your code in this editor
depth = -999;

font = fnt_dialogue

textbox_width = 475

textbox_height = 120

border = 8;

line_seperation = 16;

line_width = textbox_width - border*2;

textbox_sprite = spr_textbox_place_holder;

textbox_image = 0;

textbox_image_speed = 0;


#region The text itself.
page = 0;
page_number = 0;
text[0] = "";
draw_char = 0;
text_speed = .85;

setup = false;
#endregion