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
    draw_clear_alpha(c_black, 0)
}

draw_set_alpha(darkness_level)
draw_set_color(c_black)
draw_rectangle(0,0, 1023, 1023, false)

with(Flashlight){
    event_user(0)
}

if(darkness_level == 1){
    with(Player){
        draw_set_blend_mode(bm_subtract)
        draw_set_alpha(0.03)
        draw_set_color(c_white)
        r = 20
        xx = x
        yy = y
        while(r > 0){
            draw_circle(xx, yy, r, false)
            r -= 1
        }
        draw_set_blend_mode(bm_normal)
        draw_set_alpha(1)
    }
}

with(Terminal){
    event_user(0)
}

with(OverheadLight){
    event_user(0)
}

with(RedLight){
    event_user(0)
}

with(ElevatorLight){
    event_user(0)
}

with(Exit){
    event_user(0)
}

surface_set_target(application_surface)
camera_apply()

draw_set_alpha(1)

draw_surface(surf, view_xview, view_yview)
