///@arg isJumping

var isJumping = argument0;

if (_jumpHeight < 30 || _jumpHeight < _maxJumpHeight && isJumping)
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