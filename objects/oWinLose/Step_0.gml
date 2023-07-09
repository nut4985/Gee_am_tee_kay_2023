/// @desc ?
if keyboard_check_pressed(ord("R"))
{
	global.timer = 0
	global.gameState = 0
	ds_list_clear(global.chatList)
	audio_stop_sound(gmtksong)
	room_restart()
}

var _alive = 0
with(oPlayer)
{
	if (currentState != PlayerStateDead)
	{
		_alive++
	}
}
playerAlive = _alive

if global.gameState == 0
{
	if mouse_check_button_pressed(mb_left) start()
}

if global.gameState < 2
	if (playerAlive + global.playerAlive <= 0)
		win()
		
if global.gameState == 1
{
	global.timer++
	if (current_time >= nextSpawn) and playerAlive < 7
	{
		SpawnPlayer(nextSpawnNum)
		nextSpawn = current_time + irandom_range(3000, 10000)
		nextSpawnNum = irandom_range(1, 5)
	}
}












