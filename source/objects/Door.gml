#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
arrow = noone
fading = false
roomTo = room
warpid=""
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 2
alarm[1] = 20
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 3
fading = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!place_meeting(x, y, Player)){
    with(arrow){
        instance_destroy()
    }
    arrow = noone
}
if(image_index != 0){
    with(Player){
        hspeed = 0
    }
}
if(fading){
    with(Player){
        image_alpha -= 0.02
        if(image_alpha <= 0){
            cutscene = false
            unlock_controls()
            if(other.roomTo == room2ndHallway && other.warpid == "door2"){
                savedatap("time", savedatap("time") + 3000)
                if(ds_list_find_index(global.unlocked_scps, "055") == -1){
                    ds_list_add(global.unlocked_scps, "055")
                    with(instance_create(x, y, PlayerText)){
                        text = "File unlocked: SCP-055"
                    }
                }

            }

            warp_to(other.roomTo)
            global.warp_id = other.warpid

        }
    }
    with(Crowbar){
        image_alpha -= 0.02
    }
    with(Flashlight){
        image_alpha -= 0.02
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.key_pressed[key_up] && !frozen && !cutscene){
    alarm[0] = 20
    image_index = 1
    sound_play("sndDoorSqueak")
    cutscene = true
    lock_controls()
    with(Player){
        hspeed = 0
    }
}

if(!arrow){
    arrow = instance_create(x + (24 * image_xscale), y - 16, UpArrow)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field roomTo: room
//field warpid: string
