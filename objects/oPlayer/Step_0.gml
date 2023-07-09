/// @desc ?
// move towards the boss

statePrevious = currentState
script_execute(currentState)
stateEntered = statePrevious != currentState
stateTimer = stateEntered ? 0 : stateTimer + 1

KeepInBound()












