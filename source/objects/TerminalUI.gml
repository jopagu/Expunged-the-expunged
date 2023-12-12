#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_discard("terminal")
Player.frozen = false
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surf = surface_set("terminal", 1024, 1024)

draw_set_color(c_black)
draw_set_alpha(0.75)

draw_rectangle(0, 0, 1024, 1024, false)

draw_set_alpha(1)

light_green = make_color_rgb(79, 224, 81)
draw_set_color(light_green)

draw_roundrect(100, 100, 700, 508, false)


dark_green = make_color_rgb(31, 54, 31)
draw_set_color(dark_green)

draw_roundrect(116, 116, 684, 492, false)

draw_set_color(c_black)
draw_set_alpha(1)

surface_set_target(application_surface)
camera_apply()

draw_surface(surf, view_xview, view_yview)

txt_x = 116
txt_y = 492 - (16 * curLine)
