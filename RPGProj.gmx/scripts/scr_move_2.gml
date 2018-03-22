///scr_move
//Movement Code For Player
//Replaced Version
dir_mov = scr_bindings();
if (dir_mov != 0) {
    image_xscale = dir_mov;
    state = "move";
    alarm[0] = 60*2;
}else {
    if (state == "move") {
        state = "rest";
    }
}
ps = player_stats; //Init For player_stats(For Shortform easy reference)
//Gaining Speed
if (spd < ps.max_spd) {
    spd += ps.spd_gain
}
//Check if moving through a wall
if (!collision_line(x,y,x+(spd*dir_mov),y+(spd*dir_mov),obj_solid,false,true)) {
    x += spd*dir_mov;
}else {
//x+spd goes through or collides into wall
}
