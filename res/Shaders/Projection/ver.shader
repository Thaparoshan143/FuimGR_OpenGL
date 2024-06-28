#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aCol;

out vec3 ourColor;

uniform mat4 projection;

void main()
{
	gl_Position = projection * vec4(aPos.x, aPos.y, aPos.z, 1.0);
	ourColor = aCol;
}