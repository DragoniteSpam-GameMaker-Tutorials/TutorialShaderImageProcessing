shader_set(shd_blur);

var uniform_tex_size = shader_get_uniform(shd_blur, "texture_size");
shader_set_uniform_f(uniform_tex_size, sprite_get_width(spr_duckling), sprite_get_height(spr_duckling));



draw_sprite(spr_duckling, 0, 32, 32);








shader_reset();