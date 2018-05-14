_isSwitchingLane = false;
_isJumping = false;
_isFalling = false;
_isAttacking = false;
_isHit = false;
_isInvulnerable = false;
_isPunching = false;
_isBlocking = false;
_hasBlocked = false;
_xSpeed = 0;
_ySpeed = 0;
_yAcc = 0;
_ySwitch = 0;
_canFire = true;

_onGround = true;
_targetGroundY = global.LaneYs[| _lane];
_currentGroundY = _targetGroundY;
_jumpHeight = 0
_hitDirection = 0;

_action = "";
_weapon = "";
_state = st_none;
_nextState = st_waiting;
_stateTimer = 0;

_projectile = obj_proj_bullet;
ai_moveX = 0;
ai_moveY = 0;
ai_moveLane = 0;
_isLaunched = false;
_sideCollision = false;

//create text file for enemy variants