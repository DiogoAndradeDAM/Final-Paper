// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_menu_rect_center(_x, _y, _w, _h, _border){
	draw_set_color(c_white)
	draw_roundrect_ext(
		_x/2 - _w - _border,
		_y/2 - _h - _border,
		_x/2 + _w + _border,
		_y/2 + _h + _border,
		10,10,0
		)
	draw_set_color(c_black)
	draw_roundrect_ext(
		_x/2 - _w,
		_y/2 - _h,
		_x/2 + _w,
		_y/2 + _h,
		10,10,0
		)

	draw_set_color(c_white)
}
function draw_menu_rect(_x, _y, _w, _h, _border){
	draw_set_color(c_white)
	draw_roundrect_ext(
		_x - _w - _border,
		_y - _h - _border,
		_x + _w + _border,
		_y + _h + _border,
		10,10,0
		)
	draw_set_color(c_black)
	draw_roundrect_ext(
		_x - _w,
		_y - _h,
		_x + _w,
		_y + _h,
		10,10,0
		)

	draw_set_color(c_white)
}