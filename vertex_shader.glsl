#version 330 core

uniform float time;

out vec3 in_color;

void main() {
	// base vertex position
	vec3 p;
	if (gl_VertexID == 0)
		p = vec3(-0.5, -0.5, 0.0);
	else if (gl_VertexID == 1)
		p = vec3(0.5, -0.5, 0.0);
	else
		p = vec3(0.0, 0.5, 0.0);

	// transform vertex position
	float freq = 3.1416;
	p.xy *= 1.0 + 0.3*cos(2.0*freq*time);
	p.xy += vec2(0.2*cos(freq*time), 0.2*sin(freq*time));

	// output transformed vertex position
	gl_Position = vec4(p, 1.0);

	// pass through position to fragment shader
	if (gl_VertexID == 0)
		in_color = vec3(1.0, 0.0, 0.0);
	else if (gl_VertexID == 1)
		in_color = vec3(0.0, 1.0, 0.0);
	else
		in_color = vec3(0.0, 0.0, 1.0);
		
}