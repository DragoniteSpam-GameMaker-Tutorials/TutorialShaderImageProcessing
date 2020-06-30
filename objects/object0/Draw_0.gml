shader_set(shd_demo);

var uniform_time = shader_get_uniform(shd_demo, "time");
shader_set_uniform_f(uniform_time, current_time / 1000);

var uniform_brightness = shader_get_uniform(shd_demo, "brightness");
shader_set_uniform_f(uniform_brightness, 1);
draw_sprite(spr_duckling, 0, 32, 32);








shader_reset();