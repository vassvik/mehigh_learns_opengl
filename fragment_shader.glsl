#version 330 core

in vec3 fragment_position;

out vec4 color;

void main() {
	color = vec4(fragment_position, 1.0);
}