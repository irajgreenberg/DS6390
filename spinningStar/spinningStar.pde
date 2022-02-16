//Star s1;
int starCount = 100;
Star[] stars = new Star[starCount];

void setup() {
  size(1000, 800);

  // Star(PVector pos, PVector spd, float outerRad, float innerRad, int pointCount, color col)
  // s1 = new Star(new PVector(0,0), new PVector(.2, .5), 200, 150, 17, color(10, 200, 50));
  for (int i=0; i< stars.length; i++) {
    stars[i] = new Star(new PVector(0, -height/2), new PVector(random(-3, 3), random(1, 2)), random(18, 30), random(6, 10), int(random(4, 20)), color(random(255), random(255), 50));
   stars[i].setDynamics(random(PI/30, PI/5), random(2, 5));
 }
  noStroke();
}

void draw() {
  //background(255);
  fill(255, 5);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  for (int i=0; i< stars.length; i++) {
    stars[i].move();
    stars[i].draw();
  }
}
