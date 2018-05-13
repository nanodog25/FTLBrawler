varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 in_Colour;
uniform float radius;
uniform float bandWidth;
uniform float xCenter;
uniform float yCenter;

void main()
{
  vec4 Color = v_vColour;
  if (Color.a > 0.0)
  {
	Color.a = 0.6 - abs(radius - length(vec2(xCenter, yCenter) - v_vTexcoord)) / (bandWidth/2.0);
  }
  
  gl_FragColor = in_Colour * Color * texture2D( gm_BaseTexture, v_vTexcoord );
}