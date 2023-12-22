#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
if(global.key_pressed[key_up] && !frozen && !cutscene){
    difficulty = (difficulty + 1) mod 2
    Player.bow = (difficulty == 0)
}

if(!arrow){
    arrow = instance_create(x + (7 * image_xscale), y - 16, UpArrow)
}
