// DS 6390, 403
// Spring, 2022
// class 2/8/2022
// Polygon with Image motion example from class

PImage img;
void setup() {
  size(900, 700);
  img = loadImage("family_of_origin.jpg");
  img.resize(200, 200);
}

void draw() {
  background(255);
  image(img, frameCount, 100);
  polygon(width/2, height/2, 150, 7, color(255, 100, 100), color(50, 200, 40, 100));
}
