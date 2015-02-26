///button_draw(button)

with (argument0) {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
            image_yscale,image_angle,image_blend,image_alpha);
    //draw_button(x,y,x+sprite_width,y+sprite_height,image_index!=2);
    draw_set_color(labelColor);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_text(x+sprite_width/2+(image_index==2),
            y+sprite_height/2+(image_index==2),label);
    if (sprite_index == 1) {
        draw_hint(hint);
    }
}
