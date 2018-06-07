if (_isTriggered)
	return;

var xVal = _obj.x;
var isTriggered = false;

switch(_obj._lane)
{
	case 0:
		if (xVal > trig_left0 && xVal < trig_right0)
			isTriggered = true;
		break;
	case 1:
		if (xVal > trig_left1 && xVal < trig_right1)
			isTriggered = true;
		break;
	case 2:
		if (xVal > trig_left2 && xVal < trig_right2)
			isTriggered = true;
		break;
	case 3:
		if (xVal > trig_left3 && xVal < trig_right3)
			isTriggered = true;
		break;
	case 4:
		if (xVal > trig_left4 && xVal < trig_right4)
			isTriggered = true;
		break;
}

if (isTriggered)
{
	_isTriggered = true;
}