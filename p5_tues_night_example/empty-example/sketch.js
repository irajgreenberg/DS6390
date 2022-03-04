let p;
const polyCount = 20;
const ps = [];

function setup() {
  createCanvas(900, 700)
  background(200, 200, 100);
  p = new Poly(createVector(width / 2, height / 2), 8, 200);

  for (let i = 0; i < polyCount; i++) {
    ps.push(new Poly(createVector(random(width), random(height)), floor(random(3, 12)), random(30, 100)));
    // ps[i] = new Poly(createVector(random(width), random(height)), floor(random(3, 12)), random(30, 100));
  }
  // put setup code here
}

function draw() {
  // background(200, 200, 100)
  fill(200, 20)
  rect(-1, -1, width + 1, height + 1);
  rect(100, 100, 50, 50);
  rect(frameCount, 100, 50, 50);

  p.create();
  // p.pos.y += .2;
  for (let i = 0; i < polyCount; i++) {
    ps[i].create();
  }
  // put drawing code here
}