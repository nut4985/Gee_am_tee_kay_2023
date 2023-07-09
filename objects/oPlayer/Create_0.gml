/// @desc ?
ApproachDist = 128
FleetDist = 80
attackDist = 250

attackInterval = 2000
nextAttack = current_time + attackInterval

spd = 0
walkSpd = 0.5
z = 0
grv = 0.3

hp = 30
maxHp = hp

name = generate_name()

function AttackCheck()
{
	if (nextAttack > current_time) return false
	var _distBoss = DistanceFromTarget(oBoss)
	if (_distBoss > attackDist) return false
	nextAttack = current_time + attackInterval
	return true
}

function AttackBoss()
{
	audio_play_sound(sndFlame, 0, false, 0.5)
	with(instance_create_layer(x, y, layer,oProjFireBall))
	{
		dir = point_direction(x, y, oBoss.x, oBoss.y)
	}
	NewChat($"{name} : {generate_message(STATES.HIT)}")
}

function DamagePlayer(_damage = 69, _direction)
{
	hp -= _damage
	if (hp <= 0)
	{
		audio_play_sound(choose(sndPlayer6, sndPlayer7, sndPlayer8), 0, false)
		NewChat($"{name} Died.", c_red)
		NewChat($"{name} : {generate_message(STATES.DYING)}")
		NewChat($"{name} has left the game.", c_yellow)
		currentState = PlayerStateDead
		stateEntered = true
		exit
	}
	audio_play_sound(choose(sndPlayer1, sndPlayer2, sndPlayer3, sndPlayer4, sndPlayer5), 0, false)
	NewChat($"{name} : {generate_message(STATES.HURT)}")
	currentState = PlayerStateKnockback
	stateEntered = true
	spd = 5
	zspd = 5
	direction = _direction
}

currentState = PlayerStateIdle
statePrevious = currentState
stateEntered = true
stateTimer = 0

if global.gameState == 1
{
	NewChat($"{name} has joined the raid", c_yellow)
}



