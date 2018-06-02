DrawRoomSurface();

draw_set_color(c_white);
if (_onPage2)
{
	draw_text(view_wview[0]*0.1, view_hview[0]*0.1, "Weapon Points: " + string(global.playerWeaponPoints));
	draw_text(view_wview[0]*0.5, view_hview[0]*0.1, "Attack Points: " + string(global.playerAttackPoints));
}
else
	draw_text(view_wview[0]*0.02, view_hview[0]*0.7, "Points: " + string(global.playerAbilityPoints));

draw_text(view_wview[0]*0.8, view_hview[0]*0.1, _description);
draw_set_color(c_black);
