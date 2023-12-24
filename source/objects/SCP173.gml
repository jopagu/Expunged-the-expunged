#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
name = ""
sound = false
seen = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


if(distance_to_object(Player) <= 1 && Player.image_alpha >= 0.7){
    kill_player()
}

b = collision_line(x, y, Player.x, Player.y, Block, true, true)
p = false
with(b){
    if(object_index == Stairs){
        other.p = true
    }
}
if((!b || p) && distance_to_object(Player) <= 640){
    seen = true
    with(SCP173Spawn){
        seen = true
    }
    if (Player.x <= x){
        ds = -1
    }else{
        ds = 1
    }
    if((ds == -1 && Player.image_xscale == -1) || (ds == 1 && Player.image_xscale == 1)){
        hspeed = ds * 3
        image_xscale = -ds
        if !sound sound_loop("sndStoneSlide2")
        sound = true
    }else{
        hspeed = 0
        sound_stop("sndStoneSlide2")
        sound = false
    }
}else{
    hspeed = 0
    sound_stop("sndStoneSlide2")
    sound = false
}
