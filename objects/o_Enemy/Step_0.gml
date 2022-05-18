vsp = vsp + grv;

//Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,o_Wall))
{
	hsp = -hsp;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,o_Wall))
{
	while (!place_meeting(x+sign(hsp),y,o_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,o_Wall))
{
	while (!place_meeting(x,y+sign(vsp),o_Wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,o_Wall))
{
	grounded = false;
	sprite_index = s_EnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_Enemy;	
	}	
	else
	{
		sprite_index = s_EnemyR;
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
