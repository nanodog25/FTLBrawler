if (_displayGrid)
{
	for (i=0; i < 5; i++)
	{
		var yDraw = global.LaneYs[| i] - global.LaneHalf;
		draw_line_width_color(camera_get_view_x(view_camera[0]), yDraw, camera_get_view_x(view_camera[0]) + view_wview[0], yDraw, 5, c_white, c_white);
	
		if (global.playerLane == i)
		{
		
			draw_set_alpha(0.5);
			var c = GetColour(i);
			for (j=i*20; j <= view_wview[0]; j+=50)
			{
				draw_line_width_color(0 + j, yDraw, 0+j - 50, 0, (i+1), c, c);
			}
			draw_set_alpha(1);
		}
	}
}