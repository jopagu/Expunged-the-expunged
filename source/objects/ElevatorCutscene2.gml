#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawing = false
arrow = noone
started = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
warp_to(roomFinal)
global.flashlight = false
global.crowbar = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!place_meeting(x, y, Player)){
    with(arrow){
        instance_destroy()
    }
    arrow = noone
}
if(started){
    Player.hspeed = 0
}

with(arrow){
    x = Player.x
    y = Player.y - 48
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.key_pressed[key_up] && !frozen && !cutscene){
    cutscene = true
    alarm[0] = 50
    started = true
}

if(!arrow){
    arrow = instance_create(Player.x , Player.y - 48, UpArrow)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(drawing){
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0,0, 8000, 6080, false)
}
