draw_set_alpha(_isUsed ? 0.6 : 1);
draw_self();
draw_set_color(_isHighlighted ? c_white : c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);