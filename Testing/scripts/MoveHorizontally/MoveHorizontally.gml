/// @arg isMovingLeft
/// @arg isMovingRight

var isMovingLeft = argument0;
var isMovingRight = argument1;

if (isMovingLeft && isMovingRight || !isMovingLeft && !isMovingRight)
{
	_xSpeed = 0;
}
else if (isMovingLeft && x > sprite_width/2) 
{ 
	_xSpeed = -1*_speed*_speedMod;			
	image_xscale = 1;
}
else if (isMovingRight && x < room_width - sprite_width/2) 
{ 
	_xSpeed = _speed*_speedMod;	
	image_xscale = -1;
}