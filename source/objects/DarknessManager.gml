#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
darkness_level = 1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_discard("darkness")
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field darkness_level : number
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surf = surface_set("darkness", 1024, 1024)

if(surface_is_new()){
    draw_clear_alpha(c_black, 1)
}

draw_set_alpha(darkness_level)
draw_set_color(c_black)
draw_rectangle(0,0, 1023, 1023, false)

with(Flashlight){
    event_user(0)
}

with(Terminal){
    event_user(0)
}

with(Player){
    draw_set_blend_mode(bm_subtract)
    draw_set_alpha(0.2)
    draw_set_color(c_white)
    draw_circle(x, y, 13, false)
    draw_set_blend_mode(bm_normal)
    draw_set_color(c_black)
    draw_set_alpha(1)
}

surface_set_target(application_surface)
camera_apply()

draw_set_alpha(1)

draw_surface(surf, view_xview, view_yview)
