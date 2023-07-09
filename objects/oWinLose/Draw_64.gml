/// @desc ?
var _x = display_get_gui_width() * 0.5
var _y = display_get_gui_height() * 0.5

if (global.gameState != 1)
	draw_sprite(displaySprite, 0,_x, _y)

if (global.gameState == 3)
{
	var _deci = global.timer mod FPS
	var _sec = global.timer div FPS
	var _min = global.timer div (FPS * 60)
	draw_text_ext_transformed(display_get_gui_width() * 0.4, display_get_gui_height() - 100, $"Time Took - {_min}:{_sec}.{_deci}", 10, 300, 2, 2, 0)
}
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
draw_text_ext_transformed(display_get_gui_width() - 32, display_get_gui_height() - 32, $"Server#69 Currently online : {playerAlive + global.playerAlive}", 10, 300, 2, 2, 0)

draw_set_halign(fa_left)
draw_set_valign(fa_top)











