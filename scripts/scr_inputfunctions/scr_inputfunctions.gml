function input_get()
{
	key_up = keyboard_check(vk_up)
	key_right = keyboard_check(vk_right)
	key_right2 = keyboard_check_pressed(vk_right)
	key_left = -keyboard_check(vk_left)
	key_left2 = -keyboard_check_pressed(vk_left)
	key_down = keyboard_check(vk_down)
	key_down2 = keyboard_check_pressed(vk_down)
	key_jump = keyboard_check_pressed(ord("Z"))
	key_jump2 = keyboard_check(ord("Z"))
	key_attack = keyboard_check(ord("X"))
	key_attack2 = keyboard_check_pressed(ord("X"))
	key_start = keyboard_check_pressed(vk_escape)
	
	if (keyboard_check_pressed(vk_insert))
		game_restart()
}
