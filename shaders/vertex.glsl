// ==========================================================================
// Vertex program for barebones GLFW boilerplate
//
// Author:  Sonny Chan, University of Calgary
// Date:    December 2015
// ==========================================================================
#version 410

// location indices for these attributes correspond to those specified in the
// InitializeGeometry() function of the main program
layout(location = 0) in vec2 VertexPosition;
layout(location = 1) in vec3 VertexColor;
// output to be interpolated between vertices and passed to the fragment stage
out vec3 color;
//m = t * r * s
//v = t * r * s
//p' = v * m * p
void main()
{
    // assign vertex position without modification
	gl_Position = vec4(VertexPosition, 0, 1);

    // assign output colour to be interpolated
    color = VertexColor;
}
