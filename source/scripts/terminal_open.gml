num = argument0

if(string_length(num) == 2){
    num = "0" + num
}

if(ds_list_find_index(global.unlocked_scps, num) < 0){
    num = "-1"
}


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
    case "1313":
        url_open("https://scp-wiki.wikidot.com/scp-1313")
        break
    case "055":
        url_open("https://scp-wiki.wikidot.com/scp-055")
        break
    case "999":
        url_open("https://scp-wiki.wikidot.com/scp-999")
        break
    case "970":
        url_open("https://scp-wiki.wikidot.com/scp-970")
        break
    case "096":
        url_open("https://scp-wiki.wikidot.com/scp-096")
        break
    case "087":
        url_open("https://scp-wiki.wikidot.com/scp-087")
        break
    case "939":
        url_open("https://scp-wiki.wikidot.com/scp-939")
        break
    case "3125":
        url_open("https://scp-wiki.wikidot.com/antimemetics-division-hub")
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
