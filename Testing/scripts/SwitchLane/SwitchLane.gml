var currenctGroundY = _currentGroundY;
_yAcc = 0;

if (_currentGroundY > _targetGroundY)
{
	_currentGroundY -= _switchSpeed;
	if (_currentGroundY < _targetGroundY)
		_currentGroundY = _targetGroundY;
}
else if (_currentGroundY < _targetGroundY)
{
	_currentGroundY += _switchSpeed * global.delta;
	if (_currentGroundY > _targetGroundY)
		_currentGroundY = _targetGroundY;
}
		
_ySwitch = _currentGroundY - currenctGroundY;
_isSwitchingLane = _targetGroundY != _currentGroundY;