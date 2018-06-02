if (y < _currentGroundY)
{
	_yAcc = 2*_speedMod;
}
else
{
	_ySpeed = 0;
	_yAcc = 0;
}