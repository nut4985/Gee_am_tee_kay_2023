/// @description 
//camera_set_view_size(view_camera[0], 320, 180)

if !view_enabled
{
    view_visible[0] = true;
    view_enabled = true;
}

// Update to player's new position
if (instance_exists(follow))
{
	x = follow.x;
	y = follow.y;
}