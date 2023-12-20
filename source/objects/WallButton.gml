#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
trigger = noone
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
    with(instance_create(x,y, trigger)){
        instance_destroy()
    }
}

if(!arrow){
    arrow = instance_create(x + (24 * image_xscale), y - 16, UpArrow)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field trigger: object
