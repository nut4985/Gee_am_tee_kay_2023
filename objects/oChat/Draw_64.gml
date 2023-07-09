/// @desc ?
live_auto_call
var _xChatPos = 50
var _yChatPos = SCREEN_H

var _chatHeight = 32

for (var i = 0; i < ds_list_size(global.chatList); i ++)
{
	var _chat = global.chatList[| i]
	draw_set_color(_chat.col)
	draw_text(_xChatPos, _yChatPos - 50, _chat.msg)
	draw_set_color(c_white)
	_yChatPos -= _chatHeight
}














