/// @desc Die
if (global.hasgun == true)
{
	with (o_Gun) instance_destroy();
	instance_change(o_PDead,true);

	direction = point_direction(other.x,other.y,x,y)
	hsp = lengthdir_x(5,direction);
	vsp = lengthdir_y(5,direction)-2;
	if (sign(hsp) != 0) image_xscale = sign (hsp);

	global.kills -= global.killsthisroom;
}
