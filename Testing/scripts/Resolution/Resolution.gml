application_surface_draw_enable(false);

var monitorW=display_get_width();
var monitorH=display_get_height();

var setW = monitorW;
var setH = monitorH;

var w = 1920;
var h = 1080;

while (setW > w || setH > h)
{
	setW -= 32;
	setH -= 32;
}

surface_resize(application_surface,monitorW,monitorH)
global.Xoffset=(monitorW-setW)/2;
global.Yoffset=(monitorH-setH)/2;