//Save current GUI size
var old_gui_w = display_get_gui_width();
var old_gui_h = display_get_gui_height();

//Set GUI size for dialogue
display_set_gui_size(room_width, room_height);

//Update our stored values
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

//Draw dialogue
var dx = 0; 
var dy = guiHeight * 0.7; 
var boxw = guiWidth; 
var boxh = guiHeight - dy; 

draw_sprite_stretched(sprBox, 0, dx, dy, boxw, boxh); 

dx += 10; 
dy += 10; 

if(showingChoices) {
    //Draw choices
    draw_set_font(FontMenu);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    for(var i = 0; i < array_length(choices); i++) {
        //Highlight selected choice
        if(i == selectedChoice) {
            draw_set_color(c_yellow);
            draw_text(dx - 8, dy, "->");
        }
        draw_set_color(c_white);
        draw_text(dx + 30, dy, choices[i].text);
        dy += 30;
    }
} else {
	if(currentMessage >= 0 && currentMessage < array_length(messages)) {
        draw_set_font(FontMenu);
        var name = messages[currentMessage].name; 
        draw_set_colour(global.charColours[$ name]);
        draw_text(dx, dy, name); 
        draw_set_colour(c_white);
        dy += 20; 
        draw_text_ext(dx, dy, drawMessage, -1, boxw - dx * 2);
    }
}
//Restore original GUI size 
display_set_gui_size(old_gui_w, old_gui_h);