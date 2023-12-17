#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
on = true
t = 0

image_angle = -90
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(on){
    t += 1

    image_angle = -90 + (90 * sin(t / 150))
}
