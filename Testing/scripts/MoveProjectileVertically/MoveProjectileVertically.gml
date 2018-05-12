if (_state == "released")
{
	var vert = _crossSpeed * (_isUp ? -1 : 1) * global.delta;
	
	_yRelease += vert;

	if (abs(_yRelease - y) >= sprite_get_height(spr_proj_vertical))
	{
		mask_index = PlaceholderProjectile;
		var col = IsSwitchCollision(_isUp ? "Up" : "Down");
		mask_index = spr_empty;
		if (!col)
		{
			_yRelease = y;
			_lane += _isUp ? -1 : 1;
			_colX = x;
			_colY = y + (_isUp ? -global.LaneHalf : global.LaneHalf);
			_colRadius = sprite_width/2;
			ProjectileCollision();
			depth = DepthModifier(_lane, "Projectile");
			_state = "through";
		}
		else
		{
			_state = "poof";
			instance_destroy();
		}
	}
}
else if (_state == "through")
{
	if (abs(_yRelease - y) < global.LaneWidth)
		y += 12 * (_isUp ? -1 : 1);
	else
		instance_destroy();
}
