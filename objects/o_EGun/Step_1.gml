x = owner.x;
y = owner.y+10;

size = owner.size

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(o_Player))
{
	image_angle = point_direction(x,y,o_Player.x,o_Player.y);

	firingdelay = firingdelay - 1;
	recoil = max(0,recoil - 1);

	if (point_in_circle(o_Player.x,o_Player.y,x,y,600)) && (firingdelay < 0)
	{
		recoil = 4;
		firingdelay = 20;
		ScreenShake(2,10);
		audio_sound_pitch(snd_shoot,choose(0.8,1.0,1.2));
		audio_play_sound(snd_shoot,1,false)
		with (instance_create_layer(x,y,"Bullet",o_EBullet))
		{
			size = other.size
			spd = 15 * size;
			direction = other.image_angle + random_range(-3,3)
			image_angle = direction;

		}
	
	}

	x = x - lengthdir_x(recoil,image_angle)
	y = y - lengthdir_y(recoil,image_angle)

	if (image_angle > 90) && (image_angle < 270)
	{
		image_yscale = -1;
	}
	else
	{
		image_yscale = 1;
	}
}
