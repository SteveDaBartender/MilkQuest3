varying vec4 v_vColour;
varying vec2 v_vTexcoord;

uniform float Time;
void main()
{
    vec2 Coord = v_vTexcoord + vec2(cos(v_vTexcoord.y*30.0 + Time*6.2831)/30.0,0)*(1.0-v_vTexcoord.y);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord);
}