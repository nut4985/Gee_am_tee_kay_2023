/// @desc ?
live_auto_call

var _bossBarWidth = 800
var _xBossBar = (display_get_gui_width() * 0.5) - (_bossBarWidth * 0.5)
var _yBossBar = 64

var _prog = max((hp / maxHp), 0)
draw_sprite(sBossBarText, 0, (display_get_gui_width() * 0.5),_yBossBar - 16)

if (_prog > 0) {
	var _barWidth = _bossBarWidth * _prog
	draw_set_color(make_color_rgb(255, 255 * _prog, 255 * _prog))
	draw_rectangle(_xBossBar, _yBossBar, _xBossBar + _barWidth, _yBossBar + 8, false)
}

draw_set_color(c_white)
draw_rectangle(_xBossBar, _yBossBar, _xBossBar + _bossBarWidth, _yBossBar + 8, true)









