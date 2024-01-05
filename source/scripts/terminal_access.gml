num = argument0

if(string_length(num) == 2){
    num = "0" + num
}

if(ds_list_find_index(global.unlocked_scps, num) < 0){
    num = "-1"
}

switch num{
    case "173":
        scp173()
        break
    case "106":
        scp106()
        break
    case "113":
        scp113()
        break
    case "033":
        scp033()
        break
    case "1313":
        scp1313()
        break
    case "055":
        scp055()
        break
    case "999":
        scp999()
        break
    case "970":
        scp970()
        break
    case "096":
        scp096()
        break
    case "087":
        scp087()
        break
    case "939":
        scp939()
        break
    case "3125":
        scp3125()
        break
    default:
        line = ds_list_create()
        part = ds_list_create()

        ds_list_add(to_destroy, line)
        ds_list_add(to_destroy, part)

        ds_list_add(part, fntTerminal)
        ds_list_add(part, light_green)
        ds_list_add(part, 5)
        ds_list_add(part, "Inaccessible object number.")

        ds_list_add(line, part)
        ds_list_add(lines, line)
        break;
}
