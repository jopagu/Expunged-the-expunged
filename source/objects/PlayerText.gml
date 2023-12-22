#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = ""
color = c_green
y_off = 16
old_count = instance_number(PlayerText)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


image_alpha -= 0.005
if(image_alpha <= 0){
    instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
new_count = instance_number(PlayerText)
if(old_count < new_count){
    y_off += 16
}
old_count = new_count

draw_set_font(fntSignpost)
draw_set_alpha(image_alpha)

if(instance_exists(Player)){
    txt_x = Player.x - (string_width(text) div 2)
    txt_y = Player.y - string_height(text) - y_off
    draw_text_outline(txt_x, txt_y, text, color)
}else{
    instance_destroy()
}
