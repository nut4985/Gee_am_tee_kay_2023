/// @desc ?
spd = 1.1
life = current_time + 2000
damage = 1

function FireBallHit(_inst)
{
	if instance_exists(_inst)
	{
		_inst.Hit(damage)
	}
	
}










