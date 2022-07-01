shader_type canvas_item;

uniform sampler2D view;
uniform float max_intensity = 10;
uniform sampler2D gradient;

void fragment(){
	vec2 pos = UV;
	
	vec4 sample = texture(view, pos);
	float x = abs(sample.x);
	float y = abs(sample.y);
	
	// Renormalise to betwen 0 and 1, and clamp.
	float vec_length = clamp(sqrt(x * x + y * y) / max_intensity, 0, 1);
	
	COLOR.rgb = texture(gradient, vec2(vec_length, 0)).rgb;
}