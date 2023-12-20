#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15
alive = true
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.old_man_active = false
global.old_man_dead = true
instance_create(x, y, CrowbarPickup)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!alive){
    image_alpha -= 0.02
    if(image_alpha == 0){
        instance_destroy()
    }
}else if(!Player.dead){
    if(Player.x <= x){
        image_xscale = 1
        hspeed = -1
    }else{
        image_xscale = -1
        hspeed = 1
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(Player.image_alpha >= 0.7 && alive){
    kill_player()
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alive = false
image_speed = 0
hspeed = 0
