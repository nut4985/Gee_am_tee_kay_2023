/// @desc ?
x += lengthdir_x(spd, dir)
y += lengthdir_y(spd, dir)

if(life < current_time)
{
	instance_destroy()
}

var _col = instance_place(x, y, oBoss)
if (_col)
{
	FireBallHit(_col)
	
	instance_destroy()
}










