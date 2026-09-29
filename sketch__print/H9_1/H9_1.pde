void setup() {
  size(500, 500);
  frameRate(2);
  noLoop();
}

void draw() {
  background(255);
  fill(120,120,120);
  ellipse(random(width), random(height), 50, 50);
}
