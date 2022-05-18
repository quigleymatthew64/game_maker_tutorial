with (instance_create_layer(x,y,layer,o_Blood))
{
	direction = other.hitfrom;
	hsp = (lengthdir_x(5,direction)) * 2;
	vsp = (lengthdir_y(5,direction)-2) * 2;
	if (sign(hsp) != 0) image_xscale = sign (hsp)
}	
