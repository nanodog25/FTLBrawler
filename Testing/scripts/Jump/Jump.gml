if (y > _currentGroundY - _jumpHeight)
{
	y -= _jumpSpeed;
}
		
if (y <= _currentGroundY - _jumpHeight)
{
	_isJumping = false;
	_isFalling = true;
}