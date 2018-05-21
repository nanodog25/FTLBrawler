_speedMod = 1;
_speedMod *= IsCollision(self, x, y, _lane, obj_effect_speedAura, true) ? 2 : 1;
_speedMod *= IsCollision(self, x, y, _lane, obj_effect_slowAura, true) ? 0.5 : 1;
image_speed=1*_speedMod;