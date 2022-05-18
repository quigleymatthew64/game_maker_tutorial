 //Get Player Input
 
if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0
	key_left = 0
	key_jump =0
}

//Calculate Movement
var move = key_right - key_left;
hsp = (move * walksp) + gunkickx;
gunkickx = 0;
vsp = (vsp + grv) + gunkicky;
gunkicky = 0;

canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -12.5;
	canjump = 0;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,o_Wall))
{
	while (!place_meeting(x+sign(hsp),y,o_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
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

var aimside = sign(mouse_x-x);
if (aimside != 0) image_xscale = aimside;

if (!place_meeting(x,y+1,o_Wall))
{
	sprite_index = s_PlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
else
{
	canjump = 10;
	if (sprite_index == s_PlayerA)
	{
		audio_sound_pitch(snd_land,choose(0.8,1.0,1.2));
		audio_play_sound(snd_land,4,false);
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"Bullet",o_Dust))
			{
				vsp = 0;
			}
		}
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_Player;	
	}	
	else
	{
		sprite_index = s_PlayerR
		if (aimside != sign(hsp)) sprite_index = s_PlayerS;
	}
}

