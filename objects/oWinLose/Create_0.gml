/// @desc ?
global.timer = 0
global.gameState = 0
displaySprite = sTitle

function start()
{
	if global.gameState == 0
	{
		instance_create_layer(room_width * 0.5, room_height * 0.5, "Instances_1", oBoss)
		with(oPlayer)
		{
			currentState = PlayerStateApproachBoss
			stateEntered = true
		}
		global.gameState = 1
	}
	audio_play_sound(gmtksong, 0, true, 0.75)
	nextSpawn = current_time + irandom_range(3000, 10000)
	nextSpawnNum = irandom_range(1, 5)
}

function lose()
{
	if global.gameState != 1 exit
	global.gameState = 2
	displaySprite = sLostText
	audio_stop_sound(gmtksong)
}

function win()
{
	if global.gameState != 1 exit
	global.gameState = 3
	displaySprite = sWinText
}

function SpawnPlayer(_count = 1)
{
	repeat(_count)
	{
		if global.playerAlive > 0
		{
			global.playerAlive--
			var _inst = instance_create_layer(random_range(32,room_width - 32), random_range(32, room_height - 32), "Instances", oPlayer)
		}	
	}
}

playerAlive = 0
global.playerAlive = 43
SpawnPlayer(5)

nextSpawn = 0
nextSpawnNum = 0







