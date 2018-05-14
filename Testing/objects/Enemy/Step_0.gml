ai_fire = false;
ai_moveUp = false;
ai_moveDown = false;
ai_jump = false;
ai_isMovingLeft = false;
ai_isMovingRight = false;
ai_retreat = false;

_stateTimer+=global.delta;

if (_state != _nextState)
{
	_state = _nextState;
	_stateTimer = 0;
}