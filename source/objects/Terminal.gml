#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0

alarm[0] = 75
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = (image_index + 1) mod 2
alarm[0] = 75
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.key_pressed[key_up] && !frozen && !instance_exists(TerminalUI)){
    instance_create(0, 0, TerminalUI)
    frozen = true
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_index == 1){


    draw_set_alpha(0.03)
    draw_set_color(c_black)
    r = 48
    xx = x + 24
    yy = y + 20
    draw_set_blend_mode(bm_subtract)
    while(r > 0){
        draw_circle(xx, yy, r, false)
        r -= 2
    }

    draw_set_blend_mode(bm_add)
    draw_set_color(c_green)
    r = 48
    while(r > 0){
        draw_circle(xx, yy, r, false)
        r -= 2
    }

    draw_set_blend_mode(bm_normal)
    draw_set_color(c_black)
    draw_set_alpha(1)

}
