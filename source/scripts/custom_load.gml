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
ds_list_read(global.unlocked_scps, savedata("unlocked_scps"))
//add your custom load code here
