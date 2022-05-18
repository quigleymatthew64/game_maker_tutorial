hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0
ScreenShake(6,60);
audio_sound_pitch(snd_dead,0.8)
audio_play_sound(snd_dead,10,false);
game_set_speed(30,gamespeed_fps);
with (o_Camera) follow = other.id;

