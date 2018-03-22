scr_input();

//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,par_solid))
{
    vsp = key_jump * -jumpspeed;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,par_solid))
{
    while(!place_meeting(x+sign(hsp),y,par_solid))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,par_solid))
{
    while(!place_meeting(x,y+sign(vsp),par_solid))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Change Sprite Direction
if (-key_left) {
    image_xscale = -1;
}
if (key_right) {
    image_xscale = 1;
}
