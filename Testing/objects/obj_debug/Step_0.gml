Debug();

if (!_loadedObjects)
{
	SetObjectsInView();
	SetPlatformsPerLane();
	_loadedObjects = true;
}