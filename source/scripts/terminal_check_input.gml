_input = string_lower(input)

string_token_start(_input, " ")
token1 = string_token_next()
token2 = string_token_next()
token3 = string_token_next()

if(token2 == ""){
    switch (token1){
        case "":
            break
        case "quit":
            instance_destroy()
            break
        case "help":
            terminal_help()
            break
        case "save":
            savedata_save(false, name)

            line = ds_list_create()
            part = ds_list_create()

            ds_list_add(to_destroy, line)
            ds_list_add(to_destroy, part)


            ds_list_add(part, fntTerminal)
            ds_list_add(part, light_green)
            ds_list_add(part, 5)
            ds_list_add(part, 'Game saved.')

            ds_list_add(line, part)
            ds_list_add(lines, line)
            break
        default:
            terminal_unrecognized()
            break
    }
}else if (token3 == ""){
    switch (token1){
        case "access":
            terminal_access(token2)
            break
        default:
            terminal_unrecognized()
            break
    }
}else{
    terminal_unrecognized()
}
