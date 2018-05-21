DrawRoomSurface();

if (_onPage2)
{
	draw_text(view_wview[0]*0.10, view_hview[0]*0.1, "Weapon Points: " + string(global.playerWeaponPoints));
	draw_text(view_wview[0]*0.50, view_hview[0]*0.1, "Attack Points: " + string(global.playerAttackPoints));
}
else
	draw_text(view_wview[0]*0.10, view_hview[0]*0.8, "Points: " + string(global.playerAbilityPoints));

