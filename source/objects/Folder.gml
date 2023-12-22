#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t = 0
object = ""
base_y = y
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t += 1
y = base_y + (8* sin(t / 15))
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(ds_list_find_index(global.unlocked_scps, object) == -1){
    ds_list_add(global.unlocked_scps, object)
}
sound_play("sndItem")
with(instance_create(x, y, PlayerText)){
    text = "File unlocked: SCP-" + other.object
}
instance_destroy()
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field object : string

if(ds_list_find_index(global.unlocked_scps, object) != -1){
    instance_destroy()
}
