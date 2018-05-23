var fire1 = keyboard_check(global.KeyHigh);
var fire2 = keyboard_check(global.KeyLow);
if (fire1 && _canFire)
{
	Player_fire1(false);
	
	if (_isSwitchingLane && IsAbilityActive(global.AbilityTransDimensionalDoubleTap))
	{
		Player_fire1(true);
	}

	_hasFired = true;
	_canFire = false;

}
else if (fire2 && _canFire)
{
	Player_fire2(false);
	
	if (_isSwitchingLane && IsAbilityActive(global.AbilityTransDimensionalDoubleTap))
	{
		Player_fire2(true);
	}

	_canFire = false;
	_hasFired = true;
}
_isAttacking = fire1 || fire2;