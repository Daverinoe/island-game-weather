shader_type canvas_item;

uniform float confinement_strength = 0.1;
uniform sampler2D u; // Initial velocity
uniform sampler2D vorticities; //
uniform float dt; // Frame time

void fragment(){
	vec2 pos = UV;
	
	vec2 old_velocity = texture(u, pos).xy;
	vec2 vorts = texture(vorticities, pos).xy;
	
	vec2 new_velocity = old_velocity + dt * confinement_strength * vorts;
	
	COLOR = vec4(new_velocity, 0.0, 1.0);
}