switch(_launchState)
{
	case "airborne":
		if (_sideCollision)
		{
			_ySpeed = 0;
			_yAcc = 2;
			_launchState = "wall";
		}
		else
		{
			sprite_index = spr_jack_hit;
			_direction = -_hitDirection;
			_xSpeed = _hitDirection * _knockBack;
			_ySpeed = -10;
		}
		break;
	case "wall":
		if (y >= _targetGroundY)
		{
			_ySpeed = -10;
			_yAcc = 2;
			_launchState = "bounce";
		}
		else
		{
			_xSpeed = _hitDirection * -1;
		}
		break;
	case "bounce":
		if (y >= _targetGroundY)
		{
			_ySpeed = 0;
			_yAcc = 0;
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
			}
		}
		else
		{
			_xSpeed = _hitDirection * -1;
		}
		break;
	case "getUp":
		_isLaunched = false;
		_isHit = false;
		alarm_set(2, InSeconds(0.5));
		break;
}