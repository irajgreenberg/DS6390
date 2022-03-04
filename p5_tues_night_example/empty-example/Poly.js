

class Poly {

    // properties are dynamically created
    constructor(pos, pts, radius) {
        this.pos = pos;
        this.pts = pts;
        this.radius = radius;
    }

    create() {
        let theta = 0;
        push();
        translate(this.pos.x, this.pos.y);
        rotate(frameCount * PI / 180);
        beginShape();
        for (let i = 0; i < this.pts; i++) {
            let x = cos(theta) * this.radius;
            let y = sin(theta) * this.radius;
            vertex(x, y);
            theta += TWO_PI / this.pts;
        }
        endShape(CLOSE);
        pop();
    }

    move() {

    }

}

