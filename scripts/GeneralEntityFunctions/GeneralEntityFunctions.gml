function ApproachTarget(_target, _speed)
{
	if !instance_exists(_target)
	{
		show_debug_message($"{current_time} Target {object_get_name(_target)} not found")
		exit
	}
	
	var _dirTarget = point_direction(x, y, _target.x, _target.y)
	
	x += lengthdir_x(_speed, _dirTarget)
	y += lengthdir_y(_speed, _dirTarget)
}


function FleetFromTarget(_target, _speed)
{
	if !instance_exists(_target)
	{
		show_debug_message($"{current_time} Target {object_get_name(_target)} not found")
		exit
	}
	
	var _dirTarget = point_direction(_target.x, _target.y, x, y)
	
	x += lengthdir_x(_speed, _dirTarget)
	y += lengthdir_y(_speed, _dirTarget)
}


function DistanceFromTarget(_target)
{
	if !instance_exists(_target)
	{
		show_debug_message($"{current_time} Target {object_get_name(_target)} not found")
		return 0
	}
	
	return point_distance(x, y, _target.x, _target.y)
}

function KeepInBound()
{
	var _bound = 32
	x = clamp(x, _bound, room_width - _bound)
	y = clamp(y, _bound, room_height - _bound)
}