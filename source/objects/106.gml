#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(Player.x <= x){
    image_xscale = 1
    hspeed = -3
}else{
    image_xscale = -1
    hspeed = 3
}
