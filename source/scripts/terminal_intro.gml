lines = ds_list_create()
to_destroy = ds_list_create()

ds_list_add(to_destroy, lines)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Loading SCiPnet v2.54")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 20)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Operating system loaded successfully")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Connecting to site server")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 50)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)


line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Connection ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, "FAILED")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Connecting to regional server")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 50)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)


line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Connection ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, "FAILED")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Connecting to ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, c_yellow)
ds_list_add(part, 5)
ds_list_add(part, "RAISA ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Site-7 server")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 50)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)


line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Connection ")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, "FAILED")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Restoring local backup")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 50)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)


line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)


part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, "MEMETIC HAZARD DETECTED")

ds_list_add(line, part)
ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, c_red)
ds_list_add(part, 5)
ds_list_add(part, "LOCAL DATA CORRUPTED")

ds_list_add(line, part)


ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Restoring minimal database from ROM")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 50)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)


line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Data loaded successfully")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 5)
ds_list_add(part, "Initiating biometric scan")

ds_list_add(line, part)

part = ds_list_create()
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminal)
ds_list_add(part, light_green)
ds_list_add(part, 50)
ds_list_add(part, "...")

ds_list_add(line, part)

ds_list_add(lines, line)

line = ds_list_create()
part = ds_list_create()

ds_list_add(to_destroy, line)
ds_list_add(to_destroy, part)

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
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

ds_list_add(part, fntTerminalBold)
ds_list_add(part, light_green)
ds_list_add(part, 0)
ds_list_add(part, "$>")

ds_list_add(line, part)

part = ds_list_create()
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
ds_list_add(part, "0")

ds_list_add(line, part)
ds_list_add(lines, line)
