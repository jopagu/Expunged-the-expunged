#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!Player.dead){
    if(Player.x <= x){
        image_xscale = 1
        hspeed = -1
    }else{
        image_xscale = -1
        hspeed = 1
    }
}
