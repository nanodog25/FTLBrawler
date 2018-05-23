var currenctGroundY = _currentGroundY;
_yAcc = 0;

if (abs(_targetGroundY - _currentGroundY) > global.LaneWidth)
{
	if (abs(_targetGroundY - _currentGroundY) > (global.LaneWidth * 4) + global.LaneHalf)
	{
		var inst = instance_create_depth(x, global.LaneYs[| 0] - global.LaneHalf - _currentGroundY + y - sprite_height + sprite_yoffset, DepthModifier(0, "BackLane"), obj_lane);
		inst._lane = 0;
		
		_currentGroundY = _lane == 0
			? _targetGroundY - global.LaneHalf
			: _targetGroundY + global.LaneHalf;
			
		_ySwitch = _currentGroundY - currenctGroundY;
		return;
	}
	else
	{
		if (_lane == 0)
			_currentGroundY += _switchSpeed * global.delta;
		else
			_currentGroundY -= _switchSpeed * global.delta;
	}
}
else if (_currentGroundY > _targetGroundY)
{
	_currentGroundY -= _switchSpeed * global.delta;
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

if (!_isSwitchingLane)
	_previousLane = _lane;

if (abs(_targetGroundY - currenctGroundY) > global.LaneHalf && abs(_targetGroundY - _currentGroundY) < global.LaneHalf || abs(_targetGroundY - _currentGroundY) == global.LaneHalf)
{
	var distanceFromBarrier = abs(global.LaneHalf - abs(_targetGroundY - _currentGroundY)) * (_ySwitch > 0 ? 1 : -1);
	var lane = _ySwitch > 0 ? _lane : _lane + 1;
	var draw = _ySwitch >= 0 ? "BackLane" : "FrontLane";

	var inst = instance_create_depth(x, y - sprite_height + sprite_yoffset + distanceFromBarrier, DepthModifier(lane, draw), obj_lane);
	inst._lane = lane;
}