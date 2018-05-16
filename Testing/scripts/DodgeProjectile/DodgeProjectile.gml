var projectile = ProjectileIncoming();
if (projectile != noone)
{
	if (!projectile._hasOrigin
	|| !projectile._origin == asset_get_index("Player")
	|| random(10) < 8)
	{
		for(var i = 0; i < 2; i++)
		{
			switch(irandom(4))
			{
				case 0:
					ai_jump = true;
				case 1:
					ai_moveDown = true;
				case 2:
					ai_moveUp = true;
				case 3:
					ai_isMovingLeft = true;
				case 4:
					ai_isMovingRight = true;
			}
		}
		_nextState = st_waiting;
	}
}