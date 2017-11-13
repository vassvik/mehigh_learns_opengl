#version 330 core

uniform float time;

void main() {
	vec3 p;
	if (gl_VertexID == 0)
		p = vec3(-0.5, -0.5, 0.0);
	else if (gl_VertexID == 1)
		p = vec3(0.5, -0.5, 0.0);
	else
		p = vec3(0.0, 0.5, 0.0);

	float freq = 2.0*3.1416;
	p.xy += vec2(0.2*cos(freq*time), 0.2*sin(freq*time));

	gl_Position = vec4(p, 1.0);
}