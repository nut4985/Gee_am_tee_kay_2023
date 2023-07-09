/// @desc ?
enum BOSS_STATE
{
	NORMAL,
	ATTACK
}

keyHor = 0
keyVrt = 0

/*
spdHor = 0
spdVrt = 0
*/

walkSpd = 1.5

maxHp = 150
hp = maxHp

playStepSet = FPS*0.2
playStep = playStepSet

lootTimer = FPS * 0.3

function GetInputs()
{
	keyHor = keyboard_check(ord("D")) - keyboard_check(ord("A")) 
	keyVrt = keyboard_check(ord("S")) - keyboard_check(ord("W")) 
	keyAttack = mouse_check_button_pressed(mb_left)
	keySkill1 = keyboard_check_pressed((ord("1")))
	keySkill2 = keyboard_check_pressed((ord("2")))
	keySkill3 = keyboard_check_pressed((ord("3")))
}


function MovePlayer()
{
	x += keyHor * walkSpd
	y += keyVrt * walkSpd
	
	KeepInBound()
}

function Hit(_damage)
{
	audio_play_sound(sndHit, 0, false, 0.4)
	if currentState == BossStateDead exit
	hp -= _damage
	if(hp <= 0)
	{
		with(oWinLose)
		{
			lose()
		}
		with(oPlayer)
		{
			currentState = PlayerStateWin
			stateEntered = true
		}
		currentState = BossStateDead
		stateEntered = true
	}
}

#region states

currentState = BossStateNormal
statePrevious = currentState
stateEntered = true
stateTimer = 0
#endregion







