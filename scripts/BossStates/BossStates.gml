function BossStateNormal()
{
	if (stateEntered) {
		sprite_index = sBoss
		stateEntered = !stateEntered;
	}
	
	MovePlayer()
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
		stateEntered = !stateEntered;
	}
	
	if (image_index == 1)
	{
		ScreenShake(5,FPS)
	}
	
	if (image_index >= 2)
	{
		currentState = BossStateNormal
		exit
	}
}