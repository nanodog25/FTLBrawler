draw_self();

var col;
if (_isHighlighted && _isActive)
	col = c_purple;
else if (_isHighlighted)
	col = c_white;
else if (_isActive)
	col = c_red;
else
	col = c_black;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(x,y,_obj._name + "\n" + string(_obj._cost), col, col, col, col, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);