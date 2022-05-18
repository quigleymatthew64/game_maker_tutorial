gunsprite = layer_sprite_get_id("Assets_1","g_Gun");
if (global.hasgun == true) && (global.kills > 1) && (global.kills < 14)
{
	endtext[0] = "And thus, our hero brutally murdered " + string(global.kills) + " people";
	endtext[1] = "Man, that's quite the body count";
	endtext[2] = "But hey, they had guns too, so I guess you could\ngo with justified self defense?";
	endtext[3] = "Unfortunately, he was still jailed when he emerged\nfrom the cave";
	endtext[4] = "So many people wont be home for Christmas now, thanks\nto him";
	endtext[5] = "Good Job";
	endtext[6] = "The End";
}
if (global.hasgun == true) && (global.kills == 1)
{
	endtext[0] = "And thus, our hero brutally murdered...huh";
	endtext[1] = "What's with that look in your eye?";
	endtext[2] = "Did you go through and kill someone...";
	endtext[3] = "Just to see what I'd say about it?";
	endtext[4] = "Wow.";
	endtext[5] = "You're a pretty gross person, huh?";
	endtext[6] = "Get out";
}
if (global.hasgun == false)
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "And thus, our hero fell in a hole and then got out again.";
	endtext[1] = "Nothing really special happened...";
	endtext[2] = "There was a gun in there, that's cool I guess";
	endtext[3] = "I hope those other guys in there got out ok...";
	endtext[4] = "The End";
}
if (global.hasgun == true) && (global.kills >= 14)
{
	endtext[0] = "So, you did it, huh";
	endtext[1] = "You needlessly killed those poor people";
	endtext[2] = "Most of them didn't have weapons or anything";
	endtext[3] = "The score counter isn't called 'Pointless Murders' for no reason";
	endtext[4] = "There was a clear path to victory with minimal casualties\nand everything";
	endtext[5] = "You are a horrible person, y'know that?";
	endtext[6] = "A horrible person...";
	endtext[7] = "Leave. Now.";
}
if (global.hasgun == true) && (global.kills == 0)
{
	endtext[0] = "And thus, our hero found a gun in a hole";
	endtext[1] = "Cool...";
	endtext[2] = "There were guys in that hole who proceeded to\nshoot at him, though";
	endtext[3] = "They were probably evil or something";
	endtext[4] = "Regardless, our hero turned in the firearm and\nreported those guys to the authorities";
	endtext[5] = "The End";
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";
