#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
length = 192
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field length: number
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(0.002)
draw_set_color(c_black)

xx = x + 3
yy = y + 21
draw_set_blend_mode(bm_subtract)

c = 0
p_d = point_distance(xx, yy, xx - 32, yy + length)
p_dir = point_direction(xx, yy, xx - 32, yy + length)
while(c <= length div 2){

    draw_triangle(xx, yy, xx, yy + (c * 2), xx + lengthdir_x(2 * c, 225), yy + lengthdir_y(p_d * (c / (length div 2)), p_dir), false)
    draw_rectangle(xx, yy, xx + 99, yy + (c * 2), false)
    p_dir = point_direction(xx + 100, yy, xx + 100 + 32, yy + length)
    draw_triangle(xx + 100, yy, xx + 100, yy + (c * 2), xx + 100 + lengthdir_x(2 * c, 315), yy + lengthdir_y(p_d * (c / (length div 2)), p_dir), false)
    c += 1
}

draw_set_blend_mode(bm_normal)
yellow = make_color_rgb(236, 242, 143)
draw_set_color(yellow)
c = 0
p_d = point_distance(xx, yy, xx - 32, yy + length)
p_dir = point_direction(xx, yy, xx - 32, yy + length)
while(c <= length div 2){

    draw_triangle(xx, yy, xx, yy + (c * 2), xx + lengthdir_x(2 * c, 225), yy + lengthdir_y(p_d * (c / (length div 2)), p_dir), false)
    draw_rectangle(xx, yy, xx + 99, yy + (c * 2), false)
    p_dir = point_direction(xx + 100, yy, xx + 100 + 32, yy + length)
    draw_triangle(xx + 100, yy, xx + 100, yy + (c * 2), xx + 100 + lengthdir_x(2 * c, 315), yy + lengthdir_y(p_d * (c / (length div 2)), p_dir), false)
    c += 1
}
draw_set_blend_mode(bm_normal)
draw_set_color(c_black)
draw_set_alpha(1)
