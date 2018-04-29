if (_jumpHeight < _maxJumpHeight)
{
	_ySpeed = -_jumpSpeed;
	_jumpHeight += _jumpSpeed;
}
else
{
	_isJumping = false;
	_isFalling = true;
	_jumpHeight = 0;
}