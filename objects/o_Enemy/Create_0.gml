if (hasweapon)
{
	mygun = instance_create_layer(x,y,"EnemyGun",o_EGun);
	with (mygun)
	{
		owner = other.id;
	}
}
else mygun = noone;
