//Handle obstacles
//Handle landing on higher ground

if (x + _xSpeed > sprite_width/2 && x + _xSpeed < room_width - sprite_width/2)
	x += _xSpeed;
else
	_xSpeed = 0;
	
y += _ySpeed;
	
depth = -1 * _currentGroundY;