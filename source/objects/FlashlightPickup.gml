#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.flashlight){
    instance_destroy()
}

t=0
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
global.flashlight = true
sound_play("sndItem")
instance_destroy()
instance_create(x, y, Flashlight)
with(instance_create(x,y, PlayerText)){
    text = "Found flashlight. Press " + key_get_name(key_item) + " to turn on/off."
}
