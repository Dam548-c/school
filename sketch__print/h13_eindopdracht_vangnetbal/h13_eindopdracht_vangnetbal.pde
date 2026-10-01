// Array met 5 ballen
Ball[] ballen = new Ball[5];

// Positie van de paddle
float paddleX;
float paddleY;

// Grootte van de paddle
float paddleBreedte = 100;
float paddleHoogte = 20;

// Score van de speler
int score = 0;


// Setup wordt 1 keer uitgevoerd
void setup() {
  size(800, 500);

  // Paddle staat onderaan
  paddleY = height - 50;

  // 5 ballen maken
  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Ball();
  }
}


// Draw wordt steeds opnieuw uitgevoerd
void draw() {
  background(220);
 
   fill(50,100,255);
  // Paddle volgt de muis
  paddleX = mouseX;

  // Paddle tekenen
  rect(paddleX - paddleBreedte / 2,
       paddleY,
       paddleBreedte,
       paddleHoogte);


  // Alle ballen 1 voor 1 uitvoeren
  for (int i = 0; i < ballen.length; i++) {

    // Bal laten vallen
    ballen[i].move();

    // Bal tekenen
    ballen[i].display();


    // Controleren of de bal gevangen is
    if (ballen[i].raaktPaddle()) {

      // 1 punt erbij
      score++;

      // Bal opnieuw bovenaan
      ballen[i].reset();
    }


    // Controleren of de bal uit beeld is
    ballen[i].resetAlsUitBeeld();
  }


  // Score op het scherm zetten
  fill(450,340,20);
  textSize(25);
  text("Score: " + score, 20, 30);
}


// Class voor de ballen
class Ball {

  // Eigenschappen van een bal
  float x;
  float y;
  float diameter;
  float snelheid;


  // Constructor: wordt uitgevoerd als een bal wordt gemaakt
  Ball() {

    // Willekeurige grootte
    diameter = random(20, 60);

    // Willekeurige snelheid
    snelheid = random(2, 5);

    // Bal bovenaan plaatsen
    reset();
  }


  // Bal tekenen
  void display() {
    fill(255,0,0); // rood
    circle(x, y, diameter);
  }


  // Bal naar beneden bewegen
  void move() {
    y = y + snelheid;
  }


  // Bal opnieuw bovenaan zetten
  void reset() {
    x = random(width);
    y = -diameter / 2;
  }


  // Als de bal onder het scherm is
  void resetAlsUitBeeld() {

    if (y - diameter / 2 > height) {

      // Bal opnieuw bovenaan
      reset();
    }
  }


  // Controleren of de bal de paddle raakt
  boolean raaktPaddle() {

    // Onderkant van de bal raakt de paddle
    boolean laagGenoeg =
      y + diameter / 2 >= paddleY;


    // Bal zit boven de paddle
    boolean bovenPaddle =
      x >= paddleX - paddleBreedte / 2 &&
      x <= paddleX + paddleBreedte / 2;


    // Beide voorwaarden moeten waar zijn
    return laagGenoeg && bovenPaddle;
  }
}



// UITLEG VOOR ALS IK VERGEET WAT ALLES DEED:

// Ball[] ballen = new Ball[5];
// Ik maak een array waarin ik 5 Ball-objecten kan bewaren.

// float x en float y
// Dit zijn de posities van de bal.

// float diameter
// Dit bepaalt hoe groot de bal is.

// float snelheid
// Dit bepaalt hoe snel de bal naar beneden gaat.

// class Ball
// Hier beschrijf ik hoe een bal werkt.

// Ball()
// Dit is de constructor. Deze wordt uitgevoerd wanneer een nieuwe bal wordt gemaakt.

// random(20, 60)
// Iedere bal krijgt een willekeurige grootte tussen 20 en 60.

// random(2, 5)
// Iedere bal krijgt een willekeurige snelheid tussen 2 en 5.

// reset()
// Zet de bal opnieuw bovenaan het scherm.

// x = random(width)
// Geeft de bal een willekeurige x-positie.

// y = -diameter / 2
// Zet de bal boven het scherm.

// display()
// Tekent de bal.

// circle(x, y, diameter)
// Tekent een cirkel met x en y als middelpunt.

// move()
// Laat de bal naar beneden bewegen.

// y = y + snelheid
// De snelheid wordt steeds bij de y-positie opgeteld.

// Ball[] ballen
// Hiermee kunnen meerdere ballen tegelijk bestaan.

// for
// De for-loop gaat langs alle ballen in de array.

// ballen[i].move()
// Laat de huidige bal bewegen.

// ballen[i].display()
// Tekent de huidige bal.

// paddleX = mouseX
// De paddle volgt de muis.

// rect()
// Tekent de paddle.

// score++
// Verhoogt de score met 1.

// raaktPaddle()
// Controleert of de bal de paddle raakt.

// y + diameter / 2
// Omdat x en y het midden van de cirkel zijn,
// gebruik ik de helft van de diameter om de onderkant te vinden.

// &&
// Betekent EN. Beide voorwaarden moeten waar zijn.

// return
// Geeft het resultaat van de controle terug.

// resetAlsUitBeeld()
// Controleert of de bal onder het scherm is.

// text()
// Zet de score op het scherm.
