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

if (abs(_targetGroundY - currenctGroundY) > global.LaneHalf && abs(_targetGroundY - _currentGroundY) < global.LaneHalf || abs(_targetGroundY - _currentGroundY) == global.LaneHalf)
{
	var distanceFromBarrier = abs(global.LaneHalf - abs(_targetGroundY - _currentGroundY)) * (_ySwitch > 0 ? 1 : -1);
	var inst = instance_create_depth(x, y - sprite_height + sprite_yoffset + distanceFromBarrier, DepthModifier(_lane, _ySwitch > 0 ? "BackLane" : "FrontLane"), obj_lane);
	var lane = _ySwitch > 0 ? _lane : _lane + 1;
	
	with (inst)
	{
		_lane = lane;
	}
}