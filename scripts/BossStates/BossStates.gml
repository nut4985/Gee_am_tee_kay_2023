function BossStateNormal()
{
	if (stateEntered) {
		sprite_index = sBoss
		stateEntered = !stateEntered;
	}
	
	MovePlayer()
	
	if (keyHor == 0) and (keyVrt == 0)	
	{
		playStep = playStepSet
	}
	
	if(playStep-- < 0)
	{
		playStep = playStepSet
		audio_play_sound(sndBossstep,0,false)
		ScreenShake(2, 5)
	}
	
	if (keyAttack)
	{
		currentState = BossStateAttack
		exit
	}
}

function BossStateAttack()
{
	if (stateEntered) {
		sprite_index = sBossAttack
		audio_play_sound(choose(sndBoss1, sndBoss2, sndBoss3, sndBoss4, sndBoss5, sndBoss6, sndBoss7, sndBoss8), 0, false)
		stateEntered = !stateEntered;
	}
	
	if (image_index == 1)
	{
		audio_play_sound(sndSmash, 0, false)
		ScreenShake(5,FPS)
		instance_create_depth(x + image_xscale * 32, y, depth-1, oProjGroundPound)
		
		// Collision Check
		var _colList = ds_list_create()
		collision_rectangle_list(x, y - 48, x + 64 * image_xscale, y, oPlayer, false, true, _colList, false)
		for (var i = ds_list_size(_colList) - 1; i >= 0; i--)
		{
			var _col = _colList[| i]
			with(_col)
			{
				if currentState != PlayerStateDead
					DamagePlayer(10, random(360))
				//instance_destroy()
			}
		}
		
		ds_list_destroy(_colList)
	}
	
	if (image_index >= 2)
	{
		currentState = BossStateNormal
		exit
	}
}

function BossStateDead()
{
	if (stateEntered) {
		sprite_index = sBossDed
		stateEntered = !stateEntered;
		stateTimer = 0
	}
	if (stateTimer > FPS * 5) exit
	
	if lootTimer-- < 0
	{
		instance_create_depth(x, y, depth-1, oLoots)
		lootTimer = FPS * 0.2
	}
	
	
}