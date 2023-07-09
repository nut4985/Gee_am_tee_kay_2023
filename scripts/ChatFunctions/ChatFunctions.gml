function generate_name()
{
	var nouns = global.chatData.nouns
	var adjectives = global.chatData.adjectives
	
    var name = ""
    if (irandom(10) <= 9)
    {
        name = name + adjectives[irandom(array_length(adjectives) - 1)]
        if (irandom(1) == 0)
        {
            name = name + "_"
        }
    }
    name = name + nouns[irandom(array_length(nouns) - 1)]
    if (irandom(20) == 20)
    {
        name = "xX" + name + "Xx"
    }
    return name
}

enum STATES
{
    HIT,
    HURT,
    DYING
}

function generate_message(_state = STATES.HIT)
{
	var hitMessages = global.chatData.hitMessages
	var hurtMessages = global.chatData.hurtMessages
	var dyingMessages = global.chatData.dyingMessages
	
    var out_msg = ""
    if (_state == STATES.HIT)
    {
        out_msg = out_msg + hitMessages[irandom(array_length(hitMessages) - 1)]
    }
    else if (_state == STATES.HURT)
    {
        out_msg = out_msg + hurtMessages[irandom(array_length(hurtMessages) - 1)]
    }
    else if (_state == STATES.DYING)
    {
        out_msg = out_msg + dyingMessages[irandom(array_length(dyingMessages) - 1)]
    }
    return out_msg
}

function NewChat( _string, _color = c_white)
{
	var _maxChat = 15
	ds_list_insert(global.chatList, 0, new Chat(_string, _color))
	var _listSize = ds_list_size(global.chatList)
	for(var i = _listSize - 1; i >= _maxChat; i--) ds_list_delete(global.chatList, i)
}

function Chat(_string, _color) constructor
{
	msg = _string
	col = _color
}