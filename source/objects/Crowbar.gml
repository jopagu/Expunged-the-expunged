#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)){
    if (Player.dead){
        instance_destroy()
    }
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)){
    x = Player.x + (7 * Player.image_xscale)
    image_angle *= Player.image_xscale
    if(Player.sprite_index = sprPlayerJump && Player.image_index != 0){
        y = Player.y - 2
        image_angle = min(15, image_angle + 3)
    }else if (Player.sprite_index = sprPlayerFall){
        y = Player.y + 1
        image_angle = max(-15, image_angle - 3)
    }else{
        y = Player.y
        if(image_angle > 0) image_angle -= 3
        else if (image_angle < 0) image_angle += 3
        else image_angle = 0
    }
    image_angle *= Player.image_xscale
    image_xscale = Player.image_xscale
}
