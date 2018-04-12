if (y > _currentGroundY - _jumpHeight)
{
	_ySpeed -= _jumpSpeed;
}
		
if (y + _ySpeed <= _currentGroundY - _jumpHeight)
{
	_isJumping = false;
	_isFalling = true;
}