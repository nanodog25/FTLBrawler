_isSwitchingLane = false;
_isJumping = false;
_isFalling = false;
_isAttacking = false;
_isHit = false;
_currentHP = _maxHP;
_xSpeed = 0;
_canEverSwitchLane = _canSwitchLane;
_canFire = true;

_onGround = true;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;
y = _targetGroundY;

