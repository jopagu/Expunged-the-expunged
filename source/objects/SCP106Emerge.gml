#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
visible = false
name = ""
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play("snd106Laugh")
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_index == 4 && !instance_exists(SCP106)){
    instance_create(x + 33, y + 25, SCP106)
}

if(image_index >= 5){
    image_speed = 0
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_index < 4 && visible){
    kill_player()
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field name: string

if(global.old_man_active && (name == "" || name == global.warp_id)){
    visible = true
    image_speed = 1/35
    alarm[0] = 106
}
#define Trigger_Trap is Triggered
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible = true
image_speed = 1/35
alarm[0] = 106
global.old_man_active = true
