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

walkSpd = 1


hp = 100

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
	
}

function Hit(_damage)
{
	hp -= _damage
}

#region states

currentState = BossStateNormal
statePrevious = currentState
stateEntered = true
#endregion







