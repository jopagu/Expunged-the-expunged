#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

draw_set_alpha(0.01)
draw_set_color(c_black)
r = 96
xx = x + (6 * image_xscale) - view_xview
yy = y + 16 - view_yview
draw_set_blend_mode(bm_subtract)
while(r > 0){
    draw_circle(xx, yy, r, false)
    r -= 2
}

draw_set_blend_mode(bm_add)
draw_set_color(c_red)
r = 96
while(r > 0){
    draw_circle(xx, yy, r, false)
    r -= 2
}

draw_set_blend_mode(bm_normal)
draw_set_color(c_black)
draw_set_alpha(1)
