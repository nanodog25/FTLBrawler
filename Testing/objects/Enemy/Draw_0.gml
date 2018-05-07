if (_currentHP > 0)
{
	event_inherited();
	draw_healthbar(x-25, y-sprite_height-10,x+25, y-sprite_height-10, (_currentHP/_maxHP) * 100, c_black, c_red, c_green, 0, true, true);
}
draw_self();
DrawShadow();