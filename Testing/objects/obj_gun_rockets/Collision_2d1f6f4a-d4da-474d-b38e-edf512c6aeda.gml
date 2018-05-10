if (other._lane == _lane)
{
	global.isLauncher = true;
	global.knockBack = 50;
	global.isPiercing = true;
	global.damage = 50;
	instance_destroy();
}