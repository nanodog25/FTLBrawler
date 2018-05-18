if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !ItemActive(global.ItemLaneBarrier))
{
	var moveUp = _isJumping || _isFalling
		? keyboard_check(global.KeyUp)
		: keyboard_check_pressed(global.KeyUp);
	var moveDown = _isJumping || _isFalling
		? keyboard_check(global.KeyDown)
		: keyboard_check_pressed(global.KeyDown);		
	SetSwitchLane(moveUp, moveDown);
}