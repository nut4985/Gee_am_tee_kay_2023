/// @desc ?
function PlayerStateIdle()
{
	if (stateEntered) {
		stateEntered = !stateEntered;
	}
	if instance_exists(oBoss) currentState = PlayerStateApproachBoss
}
function PlayerStateApproachBoss()
{
	if (stateEntered) {
		stateEntered = !stateEntered;
	}
	
	ApproachTarget(oBoss, walkSpd)
	
	var _distBoss = DistanceFromTarget(oBoss)
	if (_distBoss <= ApproachDist)
	{
		currentState = PlayerStateAttack
		exit
	}
}

function PlayerStateFleetFromBoss()
{
	if (stateEntered) {
		stateEntered = !stateEntered;
	}
	
	FleetFromTarget(oBoss, walkSpd)
	
	var _distBoss = DistanceFromTarget(oBoss)
	if (_distBoss >= FleetDist)
	{
		currentState = PlayerStateAttack
		exit
	}
}

function PlayerStateAttack()
{
	if (stateEntered) {
		stateEntered = !stateEntered;
	}
	
	if AttackCheck()
	{
		AttackBoss()
	}
	
	var _distBoss = DistanceFromTarget(oBoss)
	
	if (_distBoss >= ApproachDist)
	{
		currentState = PlayerStateApproachBoss
		exit
	}
	
	if (_distBoss <= FleetDist)
	{
		currentState = PlayerStateFleetFromBoss
		exit
	}
}

function PlayerStateKnockback()
{
	if (stateEntered) {
		stateEntered = !stateEntered;
	}
	
	x += lengthdir_x(spd, direction)
	y += lengthdir_y(spd, direction)
	
	if (z + zspd <= 0)
	{
		z = 0
		zspd = 0
		currentState = PlayerStateApproachBoss
		exit
	}
	
	z += zspd
	zspd -= grv
}

function PlayerStateDead()
{
	if (stateEntered) {
		stateEntered = !stateEntered;
		sprite_index = sPlayerDed
		image_index = irandom(sprite_get_number(sprite_index) - 1)
		image_speed = 0
		z = 0
	}
	
}

function PlayerStateWin()
{
	if (stateEntered) {
		zspd = random(2)
		stateEntered = !stateEntered;
	}
	if (z + zspd <= 0)
	{
		z = 0
		zspd = 2
	}
	
	z += zspd
	zspd -= grv
}