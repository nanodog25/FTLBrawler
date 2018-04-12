/// @arg speed
/// @arg distance

var travelSpeed = argument0;
var distance = argument1;

depth = -1*y;

if (alarm_get(0) < 0)
{
	x += _direction*travelSpeed;
	if (abs(_xRelease-x) > distance)
		instance_destroy();
}