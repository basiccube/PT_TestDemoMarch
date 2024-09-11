for (var i = 0; i < array_length(room_arr); i++)
{
	var b = room_arr[i]
	if (room == b[0])
	{
		var prevmusic = music
		music = b[1]
		if (music != prevmusic)
		{
			var prevmuID = musicID
			musicID = music_play(music)
			audio_stop_sound(prevmuID)
		}
		break
	}
}
