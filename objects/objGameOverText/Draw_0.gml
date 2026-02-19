//draw_text(60, 30, ("Game Over"))

//draw_text(0, 67, ("Press Space to Restart"))
draw_set_font(FontMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "GAME OVER");
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 40, "Press SPACE to restart");