/// @desc ?
live_auto_call

walkSpd = 0.5

safeDist = 100
attackDist = 110

attackInterval = 2000
nextAttack = current_time + attackInterval

hp = 10

enum PLAYER_STATES
{
	IDLE,
	MOVE,
	ATTACK
}

function KeepDistanceToBoss()
{
	if instance_exists(oBoss)
	var _dirBoss = point_direction(x, y, oBoss.x, oBoss.y)
	var _distBoss = point_distance(x, y, oBoss.x, oBoss.y)
	
	x += sign(floor(_distBoss - safeDist)) * lengthdir_x(walkSpd, _dirBoss)
	y += sign(floor(_distBoss - safeDist)) * lengthdir_y(walkSpd, _dirBoss)
}

function KeepInBound()
{
	x = clamp(x, 0, room_width)
	y = clamp(y, 0, room_height)
}

function AttackCheck()
{
	if (nextAttack > current_time) return false
	var _distBoss = point_distance(x, y, oBoss.x, oBoss.y)
	if (_distBoss > attackDist) return false
	nextAttack = current_time + attackInterval
	return true
}

function AttackBoss()
{
	with(instance_create_layer(x, y, layer,oProjFireBall))
	{
		dir = point_direction(x, y, oBoss.x, oBoss.y)
	}
	
}






