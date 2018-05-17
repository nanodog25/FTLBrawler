if surface_exists(global.roomSurface)
{
   draw_surface(global.roomSurface, 0, 0);
}
   
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false);
draw_set_alpha(1);