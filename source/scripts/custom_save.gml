//save gimmicks
with (Player) {
    savedata("slomo",slomo)
    savedata("whitedot",dot_hitbox)
    savedata("dotkid",dotkid)
    savedata("shootkid",shootkid)
    savedata("numjumps",maxjumps)
    savedata("vvvvvv",vvvvvv)
    savedata("beamstate",beamstate)
}
savedata("first_terminal", global.first_terminal)
savedata("clearance", global.clearance)
savedata("unlocked_scps", ds_list_write(global.unlocked_scps))
savedata("old_man_active", global.old_man_active)
savedata("first_door", global.first_door)

//add your custom save code here
