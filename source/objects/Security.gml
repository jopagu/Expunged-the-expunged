#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
active = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 4
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill_player()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_index < 3){
    if(global.key_pressed[key_left]){
        image_index = max(0, image_index - 1)
    }else if (global.key_pressed[key_right]){
        image_index = min(3, image_index + 1)
    }else if  (global.key_pressed[key_item]){
        instance_destroy()
        frozen = false
    }
}

if(image_index == 3 && !active){
    active = true
    sound_play("sndScreech")
    alarm[0] = 100
    alarm[1] = 200
}
