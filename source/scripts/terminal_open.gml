num = argument0

switch num{
    case "173":
        url_open("https://scp-wiki.wikidot.com/scp-173")
        break
    case "106":
        url_open("https://scp-wiki.wikidot.com/scp-106")
        break
    case "113":
        url_open("https://scp-wiki.wikidot.com/scp-113")
        break
    case "033":
        url_open("https://scp-wiki.wikidot.com/scp-033")
        break
    case "33":
        url_open("https://scp-wiki.wikidot.com/scp-033")
        break
    case "1313":
        url_open("https://scp-wiki.wikidot.com/scp-1313")
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
