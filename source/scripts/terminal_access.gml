num = argument0

switch num{
    case "173":
        scp173()
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
