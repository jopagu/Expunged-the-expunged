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


light_start_x1 = x + (lengthdir_x(6, image_angle) * image_xscale)
light_start_y1 = y - 1 + (lengthdir_y(6, image_angle) * image_xscale)
light_top_x1 = x + (lengthdir_x(160, image_angle - 23) * image_xscale)
light_top_y1 = y - 1 + (lengthdir_y(160, image_angle - 23) * image_xscale)
light_bottom_x1 = x + (lengthdir_x(160, image_angle + 23) * image_xscale)
light_bottom_y1 = y - 1+ (lengthdir_y(160, image_angle + 23) * image_xscale)

light_c_x1 = x + (lengthdir_x(180, image_angle) * image_xscale)
light_c_y1 = y - 1 + (lengthdir_y(180, image_angle) * image_xscale)

light_start_x2 = x + (lengthdir_x(6, image_angle) * image_xscale)
light_start_y2 = y - 1 + (lengthdir_y(6, image_angle) * image_xscale)
light_top_x2 = x + (lengthdir_x(240, image_angle - 23) * image_xscale)
light_top_y2 = y - 1 + (lengthdir_y(240, image_angle - 23) * image_xscale)
light_bottom_x2 = x + (lengthdir_x(240, image_angle + 23) * image_xscale)
light_bottom_y2 = y - 1+ (lengthdir_y(240, image_angle + 23) * image_xscale)

light_c_x2 = x + (lengthdir_x(260, image_angle) * image_xscale)
light_c_y2 = y - 1 + (lengthdir_y(260, image_angle) * image_xscale)

draw_set_color(c_white)
draw_set_alpha(0.2)

draw_triangle(light_start_x1, light_start_y1, light_top_x1, light_top_y1,
    light_bottom_x1, light_bottom_y1, false)

draw_triangle(light_start_x2, light_start_y2, light_top_x2, light_top_y2,
    light_bottom_x2, light_bottom_y2, false)


draw_set_blend_mode(bm_add)
draw_set_color(c_black)
draw_set_alpha(1)
draw_circle(light_c_x2, light_c_y2,
    point_distance(light_c_x2, light_c_y2, light_top_x2, light_top_y2), false)


draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)
draw_set_alpha(0.2)
draw_circle(light_c_x2, light_c_y2,
    point_distance(light_c_x2, light_c_y2, light_top_x2, light_top_y2), false)

draw_set_blend_mode(bm_add)
draw_set_color(c_black)
draw_set_alpha(1)
draw_circle(light_c_x1, light_c_y1,
    point_distance(light_c_x1, light_c_y1, light_top_x1, light_top_y1), false)


draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)
draw_set_alpha(0.2)
draw_circle(light_c_x1, light_c_y1,
    point_distance(light_c_x1, light_c_y1, light_top_x1, light_top_y1), false)

draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)
draw_set_alpha(0.2)
draw_circle(light_c_x1, light_c_y1,
    point_distance(light_c_x1, light_c_y1, light_top_x1, light_top_y1), false)




draw_set_blend_mode(bm_normal)
draw_set_color(c_black)

surface_set_target(application_surface)

draw_self()
