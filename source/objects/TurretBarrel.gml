#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
on = true
t = 0
tracking = false

image_angle = 180
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0)
if(tracking && on){
    alarm[0] = 3
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if((abs(angle_difference(direction_to_object(Player), image_angle)) <= 20)  && distance_to_object(Player) <= 240
    && !collision_line(x + lengthdir_x(30, image_angle), y + lengthdir_y(30, image_angle), Player.x, Player.y, Block, true, false)){
    if !tracking{
        tracking = true
        alarm[0] = 3
    }
}else if (tracking && on){
    t = (image_angle - 180) mod 360
    tracking = false
}

if(tracking && on){
    d = direction_to_object(Player)
    if(d >= 0 && d <= 90){
        image_angle = 0
    }else if(d <= 180){
        image_angle = 180
    }else{
        image_angle = d + Player.hspeed
    }
}else if(on){
    t = (t + 1) mod 360
    if(t >= 180){
        image_angle = 180 + (360 - t)
    }else{
        image_angle = 180 + t
    }


}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play("sndGunshot")
with(instance_create(x + lengthdir_x(30, image_angle), y + lengthdir_y(30, image_angle), TurretBullet)){
    image_angle = other.image_angle + random_range(-10, 10)
    hspeed = lengthdir_x(15, image_angle)
    vspeed = lengthdir_y(15, image_angle)
}
#define Trigger_Trap is Triggered
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
on = !on

if !on {
    sound_play("sndPowerDown")
}
