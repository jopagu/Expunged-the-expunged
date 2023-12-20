#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
yes = false
#define Collision_SCP106
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(OverheadLight){
    if on{
        other.yes = true
    }
}

if(yes){
    with(other){
        instance_destroy()
    }
}
