_isSwitchingLane = false;
_isJumping = false;
_isFalling = false;
_isAttacking = false;
_isHit = false;
_isInvulnerable = false;
_isPunching = false;
_currentHP = _maxHP;
_xSpeed = 0;
_ySpeed = 0;
_canEverSwitchLane = _canSwitchLane;
_canFire = true;

_onGround = true;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;
_jumpHeight = 0
y = _targetGroundY;
_hitDirection = 0;

_collisionBuffer = 20;