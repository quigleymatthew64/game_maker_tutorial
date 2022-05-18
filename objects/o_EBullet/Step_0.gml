x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting(x,y,o_Player))
{
	with (o_Player)
	{
		hp--;	
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}

if (place_meeting(x,y,o_Wall)) && (image_index != 0)
{
	while (place_meeting(x,y,o_Wall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0
	instance_change(o_HitSpark,true);
}
