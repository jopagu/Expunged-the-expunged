#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/35
alarm[0] = 106
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
