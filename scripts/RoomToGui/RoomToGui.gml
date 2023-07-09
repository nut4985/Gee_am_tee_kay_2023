/// @desc Converts x,y in game world to gui x,y
/// @param {real} _x x position in game world
/// @param {real} _y y position in game world
/// @returns {array<Real>} array contains x,y position in gui

function RoomCoordToGUICoord(_x, _y)
{
	var cl = camera_get_view_x(view_camera[0])
	var ct = camera_get_view_y(view_camera[0])

	var off_x = _x - cl // x is the normal x position
	var off_y = _y - ct // y is the normal y position
	// convert to gui
	var off_x_percent = off_x / camera_get_view_width(view_camera[0])
	var off_y_percent = off_y / camera_get_view_height(view_camera[0])
       
	var gui_x = off_x_percent * display_get_gui_width()
	var gui_y = off_y_percent * display_get_gui_height()
	
	return [gui_x,gui_y];
}