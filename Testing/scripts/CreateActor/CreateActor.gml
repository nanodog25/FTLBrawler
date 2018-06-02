_isSwitchingLane = false;
_isWrapping = false;
_isJumping = false;
_isFalling = false;
_isAttacking = false;
_isHit = false;
_isInvulnerable = false;
_isPunching = false;
_isBlocking = false;
_hasBlocked = false;
_hasFired = false;
_isLaunched = false;
_sideCollision = false;
_isMelee = false;
_isStunned = false;
_moveUp = false;
_moveDown = false;

_canFire = true;
_onGround = true;

_xSpeed = 0;
_xSwitchSpeed = 0;
_ySpeed = 0;
_yAcc = 0;
_ySwitch = 0;
_jumpHeight = 0
_hitDirection = 0;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;

_direction = 1;
image_xscale = -_direction;
_bbWidth = bbox_right - bbox_left;
_bbHeight = bbox_bottom - bbox_top;

_state = st_none;
_nextState = st_waiting;
_stateTimer = 0;

_projectile = obj_proj_bullet;