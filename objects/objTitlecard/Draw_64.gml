/// @description Draw title

draw_set_halign(fa_center);
draw_set_font(fntTitle);
draw_set_color(c_black);

draw_set_alpha(a / 3);
draw_rectangle(0, view_get_hport(0) / 2 - 50, view_get_wport(0), view_get_hport(0) / 2 + 50, false);
draw_set_alpha(1);

draw_text_ext_color(view_get_wport(0) / 2, view_get_hport(0) / 2 - 50, title, 0, view_get_wport(0), c_white, c_white, c_white, c_white, a);
draw_set_font(fntGuiSmall);
draw_text_ext_color(view_get_wport(0) / 2, view_get_hport(0) / 2, subtitle, 0, view_get_wport(0), c_white, c_white, c_white, c_white, a);