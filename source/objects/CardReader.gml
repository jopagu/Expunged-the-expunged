#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
clearance = 0
trigger = noone
arrow = noone
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 0
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
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.key_pressed[key_up] && !frozen && !cutscene){
    if(global.clearance >= clearance){
        sound_play("sndCorrect")
        image_index = 2
        alarm[0] = 50
        with(instance_create(x,y, trigger)){
            event_user(0)
        }
        with(instance_create(x, y, PlayerText)){
            text = "Credentials accepted"
        }
    }else{
        sound_play("sndIncorrect")
        image_index = 1
        alarm[0] = 50
        with(instance_create(x, y, PlayerText)){
            color = c_red
            text = "Clearance level " + string(other.clearance) + " required"
        }
    }
}

if(!arrow){
    arrow = instance_create(x + (7 * image_xscale), y - 16, UpArrow)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field clearance: number
//field trigger: object
