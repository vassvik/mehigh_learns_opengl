#version 330 core

void main() {
	vec3 p;
	if (gl_VertexID == 0)
		p = vec3(-0.5, -0.5, 0.0);
	else if (gl_VertexID == 1)
		p = vec3(0.5, -0.5, 0.0);
	else
		p = vec3(0.0, 0.5, 0.0);

	gl_Position = vec4(p, 1.0);
}