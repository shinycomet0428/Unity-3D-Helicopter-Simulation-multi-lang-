#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec2 TexCoords;

uniform mat4 model;

layout (std140) uniform UBObjects
{
    mat4 projection_view;
    vec3 camPos;
};

void main()
{
    TexCoords = aTexCoords;    
	gl_Position = projection_view * model * vec4(aPos, 1.0f);
}