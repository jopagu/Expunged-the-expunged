#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

draw_set_alpha(0.02)
draw_set_color(c_black)
r = 32
xx = x + (24 * image_xscale) - view_xview
yy = y + 14 - view_yview
draw_set_blend_mode(bm_subtract)
while(r > 0){
    draw_circle(xx, yy, r, false)
    r -= 2
}

draw_set_blend_mode(bm_add)
draw_set_color(c_red)
r = 32
while(r > 0){
    draw_circle(xx, yy, r, false)
    r -= 2
}

draw_set_blend_mode(bm_normal)
draw_set_color(c_black)
draw_set_alpha(1)
