st_none = "";
st_waiting = "waiting";
st_retreat = "retreat";
st_moveToCover = "moveToCover";
st_popUp = "popUp";
st_popDown = "popDown";
st_fire = "fire";
st_inCover = "inCover";
stb_isHit = false;

ai_agility = 7;
ai_canDodge = true;
ai_moveX = 0;
ai_moveY = 0;
ai_moveLane = 0;


event_inherited();
CreateActor();
randomise();
image_blend = make_colour_hsv(random(255), 255, 255);
