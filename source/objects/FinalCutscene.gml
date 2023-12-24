#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(Credits){
    vspeed = -1
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

with(the){
    alarm[0] = 75
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active) exit

active = true
cutscene = true
frozen = true
alarm[0] = 500
alarm[1] = 25

Player.visible = false
the = instance_create(Player.x, Player.y, Melting)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active){
    draw_set_color(c_red)
    draw_set_alpha(0.5)
    draw_rectangle(0,0,800, 608, false)
}
