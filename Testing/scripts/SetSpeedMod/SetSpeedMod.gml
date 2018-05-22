var isSpeed = IsCollision(self, x, y, _lane, obj_effect_speedAura, true);
var isSlow = IsCollision(self, x, y, _lane, obj_effect_slowAura, true);

_speedMod = 1;

if (isSpeed)
	_speedMod *= instance_nearest(x,y,obj_effect_speedAura)._multiplier;

if (isSlow)
	_speedMod *= instance_nearest(x,y,obj_effect_slowAura)._multiplier;

image_speed=1*_speedMod;