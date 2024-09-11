function sound_play(sound, unique = false)
{
	if (unique && audio_is_playing(sound))
		exit;
	var snd_id = audio_play_sound(sound, 1, false)
	audio_sound_gain(snd_id, 0.6, 0)
}

///@params music_ind
function music_play(_music)
{
	var snd = audio_play_sound(_music, 10, true)
	audio_sound_gain(snd, 0.6, 1)
	return snd;
}