if (!_isSwitchingLane && !_isWormholeCooldown && _canEverSwitchLane && _canSwitchLane && !IsAbilityActive(global.AbilityItemBuff) && !IsItemActive(global.ItemLaneBarrier))
{
	var moveUp = _isJumping || _isFalling
		? keyboard_check(global.KeyUp)
		: keyboard_check_pressed(global.KeyUp);
	var moveDown = _isJumping || _isFalling
		? keyboard_check(global.KeyDown)
		: keyboard_check_pressed(global.KeyDown);		
	SetSwitchLane(moveUp, moveDown);
	
	if (!_isSwitchingLane && IsAbilityActive(global.AbilityWrapSwitch))
		SetSwitchLaneWrap(moveUp, moveDown);
}