/// @arg isMovingLeft
/// @arg isMovingRight
if (argument0 && argument1 || !argument0 && !argument1)
{
	_xSpeed = 0;
}
else if (argument0 && x > sprite_width/2) 
{ 
	_xSpeed = -1*_speed*_speedMod;			
	image_xscale = 1;
}
else if (argument1 && x < room_width - sprite_width/2) 
{ 
	_xSpeed = _speed*_speedMod;	
	image_xscale = -1;
}