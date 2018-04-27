//#define PI 3.14

//varying vec2 v_vTexcoord;
//varying vec4 v_vColour;

//uniform float u_fRed;
//uniform float u_fGreen;
//uniform float u_fBlue;
//uniform float u_fAlpha;
//uniform float u_distance;

//void main() {
//	//rectangular to polar
//	vec2 norm = v_vTexcoord.st * 2.0 - 1.0;
//	float theta = atan(norm.y, norm.x);
//	float r = 96;	
//	float coord = (theta + PI) / (2.0*PI);
	
//	//the tex coord to sample our 1D lookup texture	
//	//always 0.0 on y axis
//	vec2 tc = vec2(coord, 0.0);
	
//	//the center tex coord, which gives us hard shadows
//	float center = sample(tc, r);
//	//we multiply the blur amount by our distance from center
//	//this leads to more blurriness as the shadow "fades away"
//	float blur = (1./u_distance)  * smoothstep(0., 1., r); 
	
//	//now we use a simple gaussian blur
//	float sum = 0.0;
	
//	sum += sample(vec2(tc.x - 4.0*blur, tc.y), r) * 0.05;
//	sum += sample(vec2(tc.x - 3.0*blur, tc.y), r) * 0.09;
//	sum += sample(vec2(tc.x - 2.0*blur, tc.y), r) * 0.12;
//	sum += sample(vec2(tc.x - 1.0*blur, tc.y), r) * 0.15;
	
//	sum += center * 0.16;
	
//	sum += sample(vec2(tc.x + 1.0*blur, tc.y), r) * 0.15;
//	sum += sample(vec2(tc.x + 2.0*blur, tc.y), r) * 0.12;
//	sum += sample(vec2(tc.x + 3.0*blur, tc.y), r) * 0.09;
//	sum += sample(vec2(tc.x + 4.0*blur, tc.y), r) * 0.05;
	
//    gl_FragColor = v_vColour
//		* texture2D(gm_BaseTexture, v_vTexcoord)
//		* vec4(vec3(1.0), sum * smoothstep(1.0, 0.0, r));
//    gl_FragColor.rgb = vec3(u_fRed, u_fGreen, u_fBlue);
//    gl_FragColor.a *= u_fAlpha;
//}

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_fRed;
uniform float u_fGreen;
uniform float u_fBlue;
uniform float u_fAlpha;

varying vec2 corner;
void main(){
    float alpha = 1.0 - pow(dot(corner,corner),32.5);
	gl_FragColor = v_vColour
		* texture2D(gm_BaseTexture, v_vTexcoord);
	 //vec4(1.0,0.0,0.0,alpha);
    gl_FragColor.rgb = vec3(u_fRed, u_fGreen, u_fBlue);
    gl_FragColor.a *= u_fAlpha;
}