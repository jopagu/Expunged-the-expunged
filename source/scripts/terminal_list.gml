line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Displaying accessible SCP files:")

ds_list_add(line, part)
ds_list_add(lines, line)

for(i = 0; i < ds_list_size(global.unlocked_scps); i +=1){
    item = ds_list_find_value(global.unlocked_scps, i)
    line = ds_list_create()
    part = ds_list_create()

    ds_list_add(to_destroy, line)
    ds_list_add(to_destroy, part)

    ds_list_add(part, fntTerminal)
    ds_list_add(part, light_green)
    ds_list_add(part, 5)
    ds_list_add(part, item)

    ds_list_add(line, part)
    ds_list_add(lines, line)

}
