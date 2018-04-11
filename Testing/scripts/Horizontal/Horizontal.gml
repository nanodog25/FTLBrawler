///Horizontal(moveLeft, moveRight)
if (argument[0] && argument[1] || !argument[0] && !argument[1])
{
	_xSpeed = 0;
}
else if (argument[0] && x > sprite_width/2) 
{ 
	_xSpeed = -1*_speed*_speedMod;			
	image_xscale = 1;
}
else if (argument[1] && x < room_width - sprite_width/2) 
{ 
	_xSpeed = _speed*_speedMod;	
	image_xscale = -1;
}