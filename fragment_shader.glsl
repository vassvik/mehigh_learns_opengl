#version 330 core

in vec3 fragment_position;
in vec3 fragment_color;

out vec4 color;

void main() {
	if (length(fragment_position - vec3(0.0, -0.19, 0.0)) < 0.31)
		color = vec4(1.0 - fragment_color, 1.0);
	else
		color = vec4(fragment_color, 1.0);
}