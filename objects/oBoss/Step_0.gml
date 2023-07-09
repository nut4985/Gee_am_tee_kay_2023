/// @desc ?
GetInputs()

statePrevious = currentState
script_execute(currentState)
stateEntered = statePrevious != currentState
stateTimer = stateEntered ? 0 : stateTimer + 1

if currentState == BossStateDead exit
var _face = sign(mouse_x - x)
if (_face != 0) image_xscale = _face













