#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
light_green = make_color_rgb(79, 224, 81)
dark_green = make_color_rgb(31, 54, 31)

cur_line = 0
cur_part = 0
cur_char = 0

fontidx = 0
coloridx = 1
speedidx = 2
textidx = 3

input = ""

blink = false
alarm[1] = 25

lines = ds_list_create()
to_destroy = ds_list_create()

ds_list_add(to_destroy, lines)

if(global.first_terminal == false){
    terminal_intro_first()
    global.first_terminal = true
}else{
    terminal_intro()
}

input_line = ds_list_create()
input_part1 = ds_list_create()
input_part2 = ds_list_create()
input_part3 = ds_list_create()

event_alarm(0)
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_discard("terminal")
frozen = false

for(i = 0; i < ds_list_size(to_destroy); i += 1){
    ds_list_destroy(ds_list_find_value(to_destroy, i))
}

ds_list_destroy(to_destroy)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(cur_line < ds_list_size(lines)){
    _line = ds_list_find_value(lines, cur_line)

    if(cur_part < ds_list_size(_line)){
        _part = ds_list_find_value(_line, cur_part)
        _str = ds_list_find_value(_part, textidx)
        _spd = ds_list_find_value(_part, speedidx)

        if(_spd != 0 && cur_char < string_length(_str)){
            cur_char += 1
            if (cur_char < string_length(_str)){
                sound_play("sndType")
                alarm[0] = _spd
            }
        }else{
            cur_part += 1
            if (cur_part < ds_list_size(_line)){
                sound_play("sndType")
            }
            _part = ds_list_find_value(_line, cur_part)
            _spd = ds_list_find_value(_part, speedidx)
            alarm[0] = _spd
            cur_char = 0
        }

    }else{
        cur_line += 1
        cur_part = 0
    }
}
if (alarm[0] <= 0){
    alarm[0] = 5
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
blink = !blink
alarm[1] = 25
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


if(cur_line >= ds_list_size(lines)){
    if(keyboard_check_pressed(vk_enter)){

        input_copy = ds_list_create()
        ds_list_add(to_destroy, input_copy)

        part = ds_list_create()

        ds_list_add(to_destroy, part)

        ds_list_add(part, fntTerminalBold)
        ds_list_add(part, light_green)
        ds_list_add(part, 0)
        ds_list_add(part, "$>")
        ds_list_add(input_copy, part)

        part = ds_list_create()
        ds_list_add(to_destroy, part)

        ds_list_add(part, fntTerminal)
        ds_list_add(part, light_green)
        ds_list_add(part, 5)
        ds_list_add(part, display_input)

        ds_list_add(input_copy, part)

        ds_list_add(lines, input_copy)

        terminal_check_input()

        input = ""
        cur_line += 1

    }else if(keyboard_check_pressed(vk_backspace)){
        sound_play("sndType")
        input = string_copy(input, 0, string_length(input) - 1)
    }else if(keyboard_check_pressed(vk_anykey)){
        sound_play("sndType")
        key = keyboard_key
        str = key_to_str(key)
        input += str
    }
}
i_l =string_length(input)
if(i_l > 40){
    display_input = string_copy(input, i_l - 40, 40)
}else{
    display_input = input
}

input_line = ds_list_create()
input_part1 = ds_list_create()

ds_list_add(input_part1, fntTerminalBold)
ds_list_add(input_part1, light_green)
ds_list_add(input_part1, 0)
ds_list_add(input_part1, "$>")

ds_list_add(input_line, input_part1)

input_part2 = ds_list_create()


ds_list_add(input_part2, fntTerminal)
ds_list_add(input_part2, light_green)
ds_list_add(input_part2, 5)
ds_list_add(input_part2, display_input)

ds_list_add(input_line, input_part2)

input_part3 = ds_list_create()
if(blink){

    ds_list_add(input_part3, fntTerminal)
    ds_list_add(input_part3, light_green)
    ds_list_add(input_part3, 0)
    ds_list_add(input_part3, "_")

    ds_list_add(input_line, input_part3)
}

if(Player.dead){
    instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surf = surface_set("terminal", 1024, 1024)

if(surface_is_new()){
    draw_clear_alpha(c_black, 0)
}

draw_set_color(c_black)
draw_set_alpha(0.75)

draw_rectangle(0, 0, 1024, 1024, false)

draw_set_alpha(1)


draw_set_color(light_green)

draw_roundrect(100, 100, 700, 508, false)


draw_set_color(dark_green)

draw_roundrect(116, 116, 684, 492, false)

draw_set_color(c_black)
draw_set_alpha(1)

txt_x = 132
txt_y = 460 - (16 * min(cur_line, 20))

for(i = max(0, cur_line - 20); i < cur_line; i+=1){
    _line = ds_list_find_value(lines, i)
    for(j = 0; j < ds_list_size(_line); j+= 1){
        _part = ds_list_find_value(_line, j)
        _fnt = ds_list_find_value(_part, fontidx)
        _clr = ds_list_find_value(_part, coloridx)
        _str = ds_list_find_value(_part, textidx)
        draw_set_font(_fnt)
        draw_set_color(_clr)
        draw_text(txt_x, txt_y, _str)
        txt_x += string_width(_str)
    }

    txt_x = 132
    txt_y += 16

}
if(cur_line < ds_list_size(lines)){
    _line = ds_list_find_value(lines, cur_line)
    for(j = 0; j < cur_part; j+= 1){
        _part = ds_list_find_value(_line, j)
        _fnt = ds_list_find_value(_part, fontidx)
        _clr = ds_list_find_value(_part, coloridx)
        _str = ds_list_find_value(_part, textidx)
        draw_set_font(_fnt)
        draw_set_color(_clr)
        draw_text(txt_x, txt_y, _str)
        txt_x += string_width(_str)
    }
    if(cur_part < ds_list_size(_line)){
        _part = ds_list_find_value(_line, cur_part)
        _fnt = ds_list_find_value(_part, fontidx)
        _clr = ds_list_find_value(_part, coloridx)
        _str = ds_list_find_value(_part, textidx)
        _str = string_copy(_str, 0, cur_char + 1)
        draw_set_font(_fnt)
        draw_set_color(_clr)
        draw_text(txt_x, txt_y, _str)
        txt_x += string_width(_str)
    }
}else{
    txt_x = 132


    for(j = 0; j < ds_list_size(input_line); j+= 1){
        _part = ds_list_find_value(input_line, j)
        _fnt = ds_list_find_value(_part, fontidx)
        _clr = ds_list_find_value(_part, coloridx)
        _str = ds_list_find_value(_part, textidx)
        draw_set_font(_fnt)
        draw_set_color(_clr)
        draw_text(txt_x, txt_y, _str)
        txt_x += string_width(_str)
    }
}

ds_list_destroy(input_line)
ds_list_destroy(input_part1)
ds_list_destroy(input_part2)
ds_list_destroy(input_part3)

surface_set_target(application_surface)
camera_apply()

draw_surface(surf, view_xview, view_yview)
