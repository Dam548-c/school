void setup() {
  size(500, 500);
  tekenBoom(250, 400);
}

void tekenBoom(int x, int y) {
  rect(x - 20, y - 100, 40, 100);
  ellipse(x, y - 130, 150, 150);
}
