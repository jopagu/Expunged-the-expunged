///key_get_name(input id):string

switch (argument0) {
    //special keys
    case vk_space: return " ";
    case vk_shift: return "";
    case vk_control: return "";
    case vk_alt: return "";
    case vk_enter: return "";
    case vk_up: return "";
    case vk_down: return "";
    case vk_left: return "";
    case vk_right: return "";
    case vk_backspace: return "";
    case vk_tab: return "";
    case vk_insert: return "";
    case vk_delete: return "";
    case vk_pageup: return "";
    case vk_pagedown: return "";
    case vk_home: return "";
    case vk_end: return "";
    case vk_escape: return "";
    case vk_printscreen: return "";
    case vk_f1: return "";
    case vk_f2: return "";
    case vk_f3: return "";
    case vk_f4: return "";
    case vk_f5: return "";
    case vk_f6: return "";
    case vk_f7: return "";
    case vk_f8: return "";
    case vk_f9: return "";
    case vk_f10: return "";
    case vk_f11: return "";
    case vk_f12: return "";
    case vk_lshift: return "";
    case vk_rshift: return "";
    case vk_lcontrol: return "";
    case vk_rcontrol: return "";
    case vk_lalt: return "";
    case vk_ralt: return "";
    //numpad keys
    case 96: return "0";
    case 97: return "1";
    case 98: return "2";
    case 99: return "3";
    case 100: return "4";
    case 101: return "5";
    case 102: return "6";
    case 103: return "7";
    case 104: return "8";
    case 105: return "9";
    case 106: return "*";
    case 107: return "+";
    case 109: return "-";
    case 110: return ".";
    case 111: return "/";
    //misc keys
    case 186: return ";";
    case 187: return "=";
    case 188: return ",";
    case 189: return "-";
    case 190: return ".";
    case 191: return "/";
    case 192: return "`";
    case 219: return "[";
    case 220: return "\";
    case 221: return "]";
    case 222: return "'";
    //other characters
    default:
        if(keyboard_check(vk_shift) || (argument0 >= 48 && argument0 <= 57)){
            return chr(argument0)
        }else{
            return chr(argument0 + 32)
        }
}
