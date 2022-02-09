// polygon function

void polygon(float x, float y, float radius, int pointCount, color strokeCol, color fillCol) {
  fill(fillCol);
  stroke(strokeCol);
  float theta = 0.0;

  // x = cos(angle in radians)* radius;
  // y = sin(angle in radians)* radius;
  pushMatrix();
  translate(x, y);
  rotate(frameCount*PI/180);
  beginShape();
  for (int i=0; i<pointCount; i++) {
    float _x = cos(theta)* radius;
    float _y = sin(theta)* radius;
    vertex(_x, _y);
    theta += TWO_PI/pointCount;
  }
  endShape(CLOSE);
  popMatrix();
}
