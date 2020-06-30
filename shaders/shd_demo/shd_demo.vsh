//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main() {
    
    vec3 original_pos = in_Position;
    
    original_pos.x += 25. * sin(2. * time);
    original_pos.y -= 25. * sin(2. * time);
    
    vec4 object_space_pos = vec4(original_pos.xyz, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    vec4 color = in_Colour;
    color.a = max(0.5 * sin(1.5 * time) + 0.5, 0.);
    
    v_vColour = color;
    v_vTexcoord = in_TextureCoord;
}
