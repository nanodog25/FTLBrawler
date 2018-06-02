_ySwitch = _targetGroundY - _currentGroundY;
_currentGroundY += _ySwitch;
_isSwitchingLane = false;
_isWormholeCooldown = true;
_isWrapping = false;

if (_xSwitchSpeed != 0)
	_xSpeed = _xSwitchSpeed;
	
_xSwitchSpeed = 0;

alarm_set(4, InSeconds(0.2));