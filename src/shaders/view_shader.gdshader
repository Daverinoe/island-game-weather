shader_type canvas_item;

uniform sampler2D view;
uniform float max_intensity = 10;
uniform sampler2D gradient;

void fragment(){
	vec2 pos = UV;
	
	vec4 sample = texture(view, pos);
	
	COLOR = sample;
}