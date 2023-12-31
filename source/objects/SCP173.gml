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
if(!inside_view()) exit

if(distance_to_object(Player) <= 1 && Player.image_alpha >= 0.7 && !Player.dead){
    kill_player()
    sound_play("sndNeckSnap")
}

b = collision_line(x, y, Player.x, Player.y, Block, true, true)
p = false
with(b){
    if(object_index == Stairs){
        other.p = true
    }
}
if((!b || p) && distance_to_object(Player) <= 640 && abs(Player.y - y) <= 64){
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
        hspeed = ds * 3.5
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
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(instance_place(x, y, Block)){
    if (object_index != Stairs){
        other.x += -other.hspeed
    }
}
with(instance_place(x, y, SecurityGate)){
    other.x += -other.hspeed
}
