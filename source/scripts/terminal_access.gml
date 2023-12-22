num = argument0

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
    case "33":
        scp033()
        break
    case "1313":
        scp1313()
        break
    case "055":
        scp055()
        break
    case "55":
        scp055()
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
