/// @desc ?
spawnTime = current_time
life = current_time + 500

function GoundPoundHit(_inst)
{
	if instance_exists(_inst)
	{
		_inst.Hit(damage)
	}
}

