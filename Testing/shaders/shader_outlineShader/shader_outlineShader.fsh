//
// Outline shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 in_Colour;
uniform float pixelWidth;
uniform float pixelHeight;
uniform float alph;

void main()
{
  // Compute the textel offsets
  vec2 offsetX;
  offsetX.x = pixelWidth;
  vec2 offsetY;
  offsetY.y = pixelHeight;
  
  float originAlpha = sign(texture2D(gm_BaseTexture, v_vTexcoord).a);
  float alpha = originAlpha;

  // Combine the alpha from all surrounding textels. 
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);	
  
  // Only blend with the image_blend factor if the original alpha was 0. 
  // That means the image_blend parameter is the outline color. 
  gl_FragColor = (in_Colour * (1.0 - originAlpha)) + 
                 texture2D(gm_BaseTexture, v_vTexcoord);
  
  // Use the computed alpha
  gl_FragColor.a = sign(alpha) * alph + sign(alpha) * (1.0 - originAlpha) * 0.5;
}