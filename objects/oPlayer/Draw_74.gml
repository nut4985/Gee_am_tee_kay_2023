/// @desc ?
live_auto_call
var _nameCord = RoomCoordToGUICoord(x, y - 16 - z)
var _barCord = RoomCoordToGUICoord(x, y - 8 - z)

draw_set_halign(fa_center)
draw_text(_nameCord[0], _nameCord[1], name)
draw_set_halign(fa_left)

var _prog = max((hp / maxHp), 0)
if (_prog > 0) {
	var _barWidth = 32 * _prog
	draw_set_color(make_color_rgb(255, 255 * _prog, 255 * _prog))
	draw_rectangle(_barCord[0] - _barWidth, _barCord[1] - 5, _barCord[0] + _barWidth, _barCord[1], false)
}
draw_set_color(c_white)
draw_rectangle(_barCord[0] - 32, _barCord[1] - 5, _barCord[0] + 32, _barCord[1], true)













