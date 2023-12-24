#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound = false
active = false
alarm[0] = 250
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !active exit

if(!sound && Player.hspeed > 0  && Player.y >= 608){
    sound = true
    sound_loop("sndFootsteps")
}
if(Player.hspeed <= 0){
    sound_stop("sndFootsteps")
    sound = false
}
