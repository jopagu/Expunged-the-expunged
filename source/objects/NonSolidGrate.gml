#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
name=""
arrow = noone
spinning = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(distance_to_object(Player) <= 32){

    if(global.key_pressed[key_item] && !frozen && instance_exists(Crowbar) && !spinning){
        sound_play("sndMetalClang")
        solid = false
        spinning = true
        dir = direction_to_object(Player) + random_range(-15, 15)
        hspeed = lengthdir_x(3, dir)
        vspeed = lengthdir_y(3, dir)
        destroy_vent_covers(name)

    }
}

if(spinning){
    image_angle += 10
    image_alpha -= 0.02
    if(image_alpha == 0){
        instance_destroy()
    }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field name: string
