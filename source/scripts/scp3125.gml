line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Item \#: ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "SCP-3125")

ds_list_add(line, part)
ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Object Class: ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminal)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, "Keter")

ds_list_add(line, part)
ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Special Containment Procedures:")

ds_list_add(line, part)
ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "A senior Antimemetics Division staff")

ds_list_add(line, part)
ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "member must visit SCP-3125 every six weeks.")
ds_list_add(line, part)
ds_list_add(lines, line)



line = ds_list_create()
part = ds_list_create()


ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)


ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Description: ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "[REDACTED]")

ds_list_add(line, part)
ds_list_add(lines, line)
