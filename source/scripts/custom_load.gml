//load gimmicks
with (Player) {
    slomo=savedata("slomo")
    dot_hitbox=savedata("whitedot")
    dotkid=savedata("dotkid")
    shootkid=savedata("shootkid")
    maxjumps=savedata("numjumps")
    vvvvvv=savedata("vvvvvv")
    beamstate=savedata("beamstate")
}
global.first_terminal = savedata("first_terminal")
global.clearance = savedata("clearance")
global.old_man_active = savedata("old_man_active")
global.old_man_dead = savedata("old_man_dead")
global.first_door = savedata("first_door")
global.crowbar = savedata("crowbar")
global.flashlight = savedata("flashlight")
ds_list_read(global.unlocked_scps, savedata("unlocked_scps"))
//add your custom load code here
