varying vec2 vertexUV; //Created here, passed to fragment.glsl
varying vec3 vertexNormal;

void main() {
  vertexUV = uv; //vec2 - uv = already implemented
  vertexNormal = normalize(normalMatrix * normal); //normalMatrix provided by THREE.JS
  // YOU NEED THIS BOILERPLATE CODE
  gl_Position = projectionMatrix * modelViewMatrix 
  * vec4( position, 1.0 );
}

