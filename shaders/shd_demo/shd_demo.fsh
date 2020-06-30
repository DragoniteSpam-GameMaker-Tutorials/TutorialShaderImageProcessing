//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

uniform float brightness;

void main() {
    vec2 tex = v_vTexcoord;
    tex.y = 1.0 - tex.y;
    vec4 color = v_vColour * texture2D( gm_BaseTexture, tex );
    color.g *= max(0.5 * sin(5. * time) + 0.5, 0.);
    color.b *= max(0.5 * sin(4. * time) + 0.5, 0.);
    
    color.rgb *= brightness;
    
    gl_FragColor = color;
}
