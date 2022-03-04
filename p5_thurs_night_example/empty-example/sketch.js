let p;
const polyCount = 50;
let ps = [];
function setup() {
  // put setup code here
  createCanvas(900, 700);
  for (let i = 0; i < polyCount; i++) {
    ps.push(new Polygon(createVector(random(width), random(0, 100)), floor(random(3, 12)), random(10, 125), color(random(255), 200, 80)))
  }
  p = new Polygon(createVector(width / 2, height / 2), 8, 200, color(100, 200, 80))
}

function draw() {
  background(255, 100, 100);
  p.move();
  p.draw();
  for (let i = 0; i < polyCount; i++) {
    ps[i].move();
    ps[i].draw();
  }
  // put drawing code here
}