/// @desc ?
var _time = current_time - spawnTime
var _life = life - spawnTime

image_yscale = (1 - (_time / _life))

if (_time >= _life) instance_destroy()













