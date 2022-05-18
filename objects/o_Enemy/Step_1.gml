if (hp <= 0)
{
	with (mygun) instance_destroy();
	
	with (instance_create_layer(x,y,layer,o_Dead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(5,direction);
		vsp = lengthdir_y(5,direction)-2;
		if (sign(hsp) != 0) image_xscale = sign (hsp) * other.size;
		image_yscale = other.size
	}
	
	if (instance_exists(o_Player))
	{
		global.kills++;
		global.killsthisroom++;
		with (o_Game) killtextscale = 0.75;
	}
	
	instance_destroy();
}
