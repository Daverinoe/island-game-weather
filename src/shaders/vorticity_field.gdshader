shader_type canvas_item;

uniform sampler2D u; // Input velocity

void fragment(){
	vec2 dxdy = SCREEN_PIXEL_SIZE;
	
	vec2 pos = UV;
	
	float dudy = texture(u, vec2(pos.x, pos.y + dxdy.y)).x - texture(u, vec2(pos.x, pos.y - dxdy.y)).x;
	float dvdx = texture(u, vec2(pos.x + dxdy.x, pos.y)).y - texture(u, vec2(pos.x - dxdy.x, pos.y)).y;
	
	vec2 vorticity = vec2(dvdx, -dudy);
	
	COLOR = vec4(vorticity, 0.0, 1.0);
	
}