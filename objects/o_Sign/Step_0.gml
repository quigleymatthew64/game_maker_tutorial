/// @desc Display Text

if (instance_exists(o_Player)) && (point_in_circle(o_Player.x,o_Player.y,x,y,64)) && (!instance_exists(o_Text))
{
	nearby = true;
	if (keyboard_check_pressed(ord("W")))
	{
		with (instance_create_layer(x,y-64,layer,o_Text))
		{
			text = other.text
			length = string_length(text);
		}
	
		with (o_Camera)
		{
			follow = other.id
		}
	}
}
else
{
	nearby = false;
}
