if (other._lane == _lane)
{
	global.knockBack = 0;
	global.isIgnoringCover = true;
	global.damage = 20;
	global.isLauncher = false;
	instance_destroy();
}