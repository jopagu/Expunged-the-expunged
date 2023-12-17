line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Welcome ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, c_orange)
ds_list_add(part, 5)
ds_list_add(part, "D-11424")

ds_list_add(line, part)
ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Current clearance level:")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, string(global.clearance))

ds_list_add(line, part)
ds_list_add(lines, line)
