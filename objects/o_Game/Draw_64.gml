/// @desc Draw Score

if (room != r_Menu) && (instance_exists(o_Player)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95, 0.5)
	DrawSetText(c_black,f_Menu,fa_right,fa_top)
	draw_text_transformed(RES_W-8,12,string(global.kills) + " Pointless Murders :(",killtextscale,killtextscale,0)
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills) + " Pointless Murders :(",killtextscale,killtextscale,0)
}
