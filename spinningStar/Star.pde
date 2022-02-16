class Star {
  PVector pos, spd, spdInit;
  float outerRad, innerRad;
  int pointCount;
  color col;

  float theta = 0.0;
  float g = .03;
  
  float freq = 0;
  float amp = 0;

  // default cstr
  Star() {
  }

  Star(PVector pos, PVector spd, float outerRad, float innerRad, int pointCount, color col) {
    this.pos = pos;
    this.spd = spd;
    spdInit = new PVector(spd.x, spd.y, spd.z); 
    this.outerRad = outerRad;
    this.innerRad = innerRad;
    this.pointCount = pointCount;
    this.col = col;
  }
  
  void setDynamics(float freq, float amp){
    this.freq = freq;
    this.amp = amp;
  }

  void move() {
    spd.x = spdInit.x + sin(frameCount*freq)*amp;
    spd.y += g;
    pos.add(spd);
  }

  void draw() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(frameCount*PI/180);
    fill(col);
    beginShape();
    for (int i=0; i<pointCount; i++) {
      float x = cos(theta)*outerRad;
      float y = sin(theta)*outerRad;
      vertex(x, y);
      theta += TWO_PI/pointCount/2;
      x = cos(theta)*innerRad;
      y = sin(theta)*innerRad;
      vertex(x, y);
      theta += TWO_PI/pointCount/2;
    }
    endShape(CLOSE);
    popMatrix();
  }
}
