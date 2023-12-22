#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = ""
color = c_green
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
draw_set_font(fntSignpost)
draw_set_alpha(image_alpha)

if(instance_exists(Player)){
    txt_x = Player.x - (string_width(text) div 2)
    txt_y = Player.y - string_height(text) - 16
    draw_text_outline(txt_x, txt_y, text, color)
}else{
    instance_destroy()
}
