Rectangle mijnRechthoek;

void setup() {
  size(500, 500);

  mijnRechthoek = new Rectangle(100, 50, 200, 100);
}

void draw() {
  background(255);

  mijnRechthoek.teken();
}


class Rectangle {
  // Attributen
  float breedte;
  float hoogte;
  float x;
  float y;

  // Constructor
  Rectangle(float b, float h, float xPos, float yPos) {
    breedte = b;
    hoogte = h;
    x = xPos;
    y = yPos;
  }

  // Tekent de rechthoek
  void teken() {
    rect(x, y, breedte, hoogte);
  }
}
