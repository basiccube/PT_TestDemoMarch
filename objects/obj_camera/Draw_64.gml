display_set_gui_size(640, 480)
draw_set_halign(fa_center)
draw_set_color(c_white)
if (global.key_inv == 1)
    draw_sprite(spr_key, -1, 320, 30)
draw_sprite(spr_inv, -1, 320, 30)
draw_set_blend_mode(bm_normal)

