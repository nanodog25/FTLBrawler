if (y < _currentGroundY)
{
	_yAcc = 4*_speedMod;
}
else
{
	_ySpeed = 0;
	_yAcc = 0;
}