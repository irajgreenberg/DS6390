class Polygon {

    // declare props - doesn't happen in js
    constructor(pos, pts, radius, col) {
        this.pos = pos;
        this.pts = pts;
        this.radius = radius
        this.col = col;

        this.vecs = [];

        this._init();
    }

    _init() {
        let theta = 0;
        for (let i = 0; i < this.pts; i++) {
            const x = cos(theta) * this.radius;
            const y = sin(theta) * this.radius;
            // vecs[i] = createVector(x, y);
            this.vecs.push(createVector(x, y));
            theta += TWO_PI / this.pts;
        }
    }

    move() {
        this.pos.x += .4;
        this.pos.y += 1.2;
    }

    draw() {
        push();
        translate(this.pos.x, this.pos.y);
        rotate(frameCount * PI / 180);
        beginShape();
        for (let i = 0; i < this.pts; i++) {
            vertex(this.vecs[i].x, this.vecs[i].y);
        }
        endShape(CLOSE);
        pop();

    }

}