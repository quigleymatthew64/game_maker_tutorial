/// @desc Equip Gun

global.hasgun = true;
instance_create_layer(o_Player.x,o_Player.y,"Gun",o_Gun);
instance_destroy();
