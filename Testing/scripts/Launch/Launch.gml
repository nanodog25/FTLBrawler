switch(_launchState)
{
	case "airborne":
		if (_sideCollision)
		{
			_launchState = "wall";
			Launch();
		}
		else
		{
			sprite_index = spr_jack_hit;
			image_xscale = _hitDirection;
			_xSpeed = _hitDirection * _knockBack;
			_ySpeed = -10;
		}
		break;
	case "wall":
		if (y >= _targetGroundY)
		{
			_launchState = "bounce";
			Launch();
		}
		else
		{
			_xSpeed = _hitDirection * -1;
			_ySpeed = 5;
		}
		break;
	case "bounce":
		if (y <= _targetGroundY - global.bounceHeight)
		{
			_launchState = "fall";
			Launch();
		}
		else
		{
			_xSpeed = _hitDirection * -1;
			_ySpeed = -5;
		}
		break;
	case "fall":
		if (y >= _targetGroundY)
		{
			_xSpeed = 0;
			if (_currentHP <= 0)
			{
				sprite_index = spr_jack_die;
				image_index = image_number - 1;
				image_speed = 0;
			}
			else
			{
				_launchState = "getUp";
				Launch();
			}
		}
		else
		{
			_xSpeed = _hitDirection * -1;
			_ySpeed = 5;
		}
		break;
	case "getUp":
		_isLaunched = false;
		_isHit = false;
		alarm_set(2, 30);
		break;
}