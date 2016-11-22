#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform mat4 mvp_matrix;

attribute vec4 a_position;
//attribute vec2 a_texcoord;

//varying vec2 v_texcoord;

//point position and color
//attribute vec4 p_position;
attribute vec4 p_color;

//face color
varying vec4 f_color;
//! [0]
void main()
{
    // Calculate vertex position in screen space
    gl_Position = mvp_matrix * a_position;

    f_color=p_color;
    // Pass texture coordinate to fragment shader
    // Value will be automatically interpolated to fragments inside polygon faces
    //v_texcoord = a_texcoord;
}
//! [0]
