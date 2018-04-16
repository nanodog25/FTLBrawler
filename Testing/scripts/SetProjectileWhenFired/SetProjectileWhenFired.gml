_direction = -_origin.image_xscale;
_xRelease = _origin.x + _direction*_xOffset;
_yRelease = _origin.y + _yOffset;
_lane = _origin._lane;
depth = DepthModifier(_lane, "Projectile");


x = _xRelease;
y = _yRelease;
visible = true;
_released = true;