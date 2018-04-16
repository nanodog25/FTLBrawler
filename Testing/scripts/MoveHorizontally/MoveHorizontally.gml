/// @arg isMovingLeft
/// @arg isMovingRight

var isMovingLeft = argument0;
var isMovingRight = argument1;

if (isMovingLeft && isMovingRight || !isMovingLeft && !isMovingRight)
{
	_xSpeed = 0;
}
else if (isMovingLeft) 
{ 
	_xSpeed = -1*_speed*_speedMod;			
	image_xscale = 1;
}
else if (isMovingRight) 
{ 
	_xSpeed = _speed*_speedMod;	
	image_xscale = -1;
}