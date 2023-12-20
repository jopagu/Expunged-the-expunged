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
if(global.key_pressed[key_up] && !frozen && !cutscene && global.clearance >= clearance){
    with(instance_create(x,y, trigger)){
        event_user(0)
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
