if (!_isJumping && !_isFalling)
{	
	_canSwitchLane = true;
	var jump = keyboard_check_pressed(global.KeyJump);	
	if (jump)
	{
		SetJumping();
	}
}
else if (IsAbilityActive(global.AbilityBulletHopping) && keyboard_check(global.KeyJump))
{
	var projs = collision_rectangle_list(bbox_left, bbox_bottom, bbox_right, bbox_bottom+10, obj_proj_StandardProjectile, true, false, noone);
	if (projs != noone)
	{
		for (var i=0; i<ds_list_size(projs); i++)
		{
			if (projs[| i]._lane == _lane)
			{
				SetJumping();
				break;
			}
		}
		projs = noone;
	}
}