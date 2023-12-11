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
    x = Player.x + (5 * Player.image_xscale)
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
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

draw_set_blend_mode(bm_subtract)

draw_set_alpha(0.005)
r = 240
xx = x + (image_xscale * 6)
yy = y - 1
while(r > 0){
    draw_circle(xx, yy, r, false)
    r -= 2
}

draw_set_blend_mode(bm_add)
draw_set_alpha(1)
draw_triangle(xx, yy, xx, yy - 320,
    xx + (image_xscale * lengthdir_x(320, image_angle - 23)),
    yy + (image_xscale * (lengthdir_y(320, image_angle + (image_xscale * 23)))), false)
draw_triangle(xx, yy, xx, yy + 320,
    xx + (image_xscale * lengthdir_x(320, image_angle + 23)),
    yy + (image_xscale * (lengthdir_y(320, image_angle - (image_xscale * 23)))), false)
draw_rectangle(xx, yy - 320, xx - (320 * image_xscale), yy + 320, false)

draw_set_blend_mode(bm_normal)
draw_set_color(c_black)
draw_set_alpha(1)

surface_set_target(application_surface)

draw_self()
