#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t = 0
clearance = 0
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
global.clearance = clearance
sound_play("sndItem")
instance_destroy()
with(instance_create(x, y, PlayerText)){
    text = "Clearance upgraded to level " + string(other.clearance)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field clearance : number

if (global.clearance == clearance){
    instance_destroy()
}
