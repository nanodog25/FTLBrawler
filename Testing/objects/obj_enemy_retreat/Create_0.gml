event_inherited();
CreateActorParams(0, true, 12, 12, 180, 12, 15, 0, 100, "Enemy");
CreateActor();
_speed = _speed * -0.5;

randomise();
image_blend = make_colour_hsv(random(255), 255, 255);