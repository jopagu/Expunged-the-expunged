#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.old_man_dead && !global.crowbar){
    instance_create(x, y, CrowbarPickup)
}else{
    instance_destroy()
}
