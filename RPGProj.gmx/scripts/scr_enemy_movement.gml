///Movement Code
//Set Jumping Limit To Only When Touching Floor

if (image_alpha = 1) {
// Chase Player
dir = sign(obj_player.x - x);
        hsp = dir * spd;
        vsp = (min(7,vsp+0.05));
if (vsp < 10) vsp += grav;
/*
if (place_meeting(x+1,y,obj_wall)) {
    if (hsp != 0 && vsp >= 0) {
        vsp = -7;
    }
}
if (place_meeting(x-1,y,obj_wall)) {
    if (hsp != 0 && vsp >= 0) {
        vsp = -7;
    }
}
*/
/*Temp Disabled Since No Walls To Jump Up
//Horizontal Collision
if (place_meeting(round(x+hsp),round(y),obj_wall))
{
    while(!place_meeting(round(x+sign(hsp)),round(y),obj_wall)) x += sign(hsp);
    hsp = 0;
}
*/
x += hsp;
/*Temp Disabled Since No Walls To Jump Up
//Vertical Collision
if (place_meeting(round(x),round(y+vsp),obj_wall))
{
    while(!place_meeting(round(x),round(y+sign(vsp)),obj_wall)) y += sign(vsp);
    vsp = 0;
}
*/
//y += vsp; Temp Disabled Falling!
}
