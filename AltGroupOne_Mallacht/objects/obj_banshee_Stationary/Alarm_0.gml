/// @description The scream timer.
if(image_index < 5){
image_index++
audio_play_sound(snd_neckCrunch, 0, false)
alarm[0] = 60
} else {
	image_xscale *= 2
	image_yscale *= 2
	alarm[1] = 25
}
