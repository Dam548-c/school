

Hieronder zet ik **alleen een extra blok**. Je kunt dit zelf onder je andere spiekbrief plakken. Ik heb vooral voorbeelden toegevoegd van dingen die je bij een kleine programmeeropdracht/game kunt tegenkomen.
// 🎮 EXTRA BLOK – KLEINE GAME / OPDRACHTEN
// 1. PUNTEN BIJHOUDEN

Gebruik een `int` voor punten.

```java
int punten = 0;
```

Punten erbij:

```java
punten = punten + 1;
```

Of korter:

```java
punten++;
```

Punten op het scherm:

```java
text("Punten: " + punten, 20, 30);
```

---
// 2. SPELER BEWEGEN MET PIJLTJES

Eerst positie:

```java
int x = 250;
int y = 250;
```

Bewegen:

```java
void keyPressed() {

  if (keyCode == LEFT) {
    x = x - 5;
  }

  if (keyCode == RIGHT) {
    x = x + 5;
  }

  if (keyCode == UP) {
    y = y - 5;
  }

  if (keyCode == DOWN) {
    y = y + 5;
  }
}
```

Tekenen:

```java
void draw() {
  ellipse(x, y, 50, 50);
}
```

---
// 3. SPELER BINNEN HET SCHERM HOUDEN

Zonder controle kan de speler buiten beeld gaan.

```java
x = constrain(x, 25, width - 25);
y = constrain(y, 25, height - 25);
```

Bijvoorbeeld:

```java
void draw() {

  x = constrain(x, 25, width - 25);
  y = constrain(y, 25, height - 25);

  ellipse(x, y, 50, 50);
}
```

---
// 4. BOTSTING / AFSTAND CONTROLEREN

Twee objecten:

```java
int spelerX = 100;
int spelerY = 250;

int muntX = 300;
int muntY = 250;
```

Afstand berekenen:

```java
float afstand = dist(spelerX, spelerY, muntX, muntY);
```

Controleren:

```java
if (afstand < 50) {
  println("Geraakt!");
}
```

Dit is handig voor simpele games.

---
// 5. MUNTJE VERZAMELEN

```java
int spelerX = 100;
int spelerY = 250;

int muntX = 300;
int muntY = 250;

int punten = 0;

void draw() {

  background(255);

  // speler
  ellipse(spelerX, spelerY, 50, 50);

  // munt
  ellipse(muntX, muntY, 25, 25);

  // afstand controleren
  float afstand = dist(spelerX, spelerY, muntX, muntY);

  if (afstand < 35) {
    punten++;
    muntX = int(random(width));
    muntY = int(random(height));
  }

  text("Punten: " + punten, 20, 30);
}
```

---
// 6. TIMER / TIJD BIJHOUDEN

`millis()` geeft aan hoeveel milliseconden het programma draait.

```java
int startTijd;

void setup() {
  size(500,500);
  startTijd = millis();
}

void draw() {

  int tijd = millis() - startTijd;

  println(tijd);
}
```

Voor een simpele timer:

```java
int seconden = (millis() - startTijd) / 1000;
```

---
// 7. GAME OVER

Gebruik een `boolean`.

```java
boolean gameOver = false;
```

Controleren:

```java
if (punten >= 10) {
  gameOver = true;
}
```

Game over weergeven:

```java
if (gameOver) {
  text("GAME OVER", 200, 250);
}
```

---
// 8. STARTSCHERM

```java
boolean gestart = false;

void draw() {

  background(255);

  if (gestart == false) {
    text("Druk op ENTER om te starten", 100, 250);
  } else {
    text("Het spel is gestart!", 100, 250);
  }
}
```

Starten met toetsen:

```java
void keyPressed() {

  if (keyCode == ENTER) {
    gestart = true;
  }
}
```

---
// 9. GAME MET VERSCHILLENDE STATES

Handig als een game een startscherm, spel en game-over heeft.

```java
int scherm = 0;
```

Bijvoorbeeld:

```text
0 = startscherm
1 = game
2 = game over
```

In `draw()`:

```java
if (scherm == 0) {
  // startscherm
}

if (scherm == 1) {
  // game
}

if (scherm == 2) {
  // game over
}
```

Naar het spel:

```java
if (keyCode == ENTER) {
  scherm = 1;
}
```

---
// 10. BORD MAKEN MET EEN FOR-LOOP

Bijvoorbeeld een raster:

```java
for (int x = 0; x < 500; x = x + 50) {
  line(x, 0, x, 500);
}

for (int y = 0; y < 500; y = y + 50) {
  line(0, y, 500, y);
}
```

→ Hiermee maak je een raster van vakken.

---
// 11. BOTER-KAAS-EN-EIEREN – BASIS

Een simpel bord:

```java
void setup() {
  size(600,600);
}

void draw() {

  background(255);

  // verticale lijnen
  line(200,0,200,600);
  line(400,0,400,600);

  // horizontale lijnen
  line(0,200,600,200);
  line(0,400,600,400);
}
```

Het bord bestaat nu uit 9 vakken.

---
// 12. BOTER-KAAS-EN-EIEREN MET ARRAY

Een array kan de 9 vakken onthouden.

```java
char[] bord = {
  ' ', ' ', ' ',
  ' ', ' ', ' ',
  ' ', ' ', ' '
};
```

Bijvoorbeeld speler X zet op plek 0:

```java
bord[0] = 'X';
```

Speler O op plek 4:

```java
bord[4] = 'O';
```

---
// 13. ARRAY VAN BOTER-KAAS-EN-EIEREN TONEN

```java
for (int i = 0; i < bord.length; i++) {
  println(bord[i]);
}
```

`bord.length` → aantal plekken in de array.

---
// 14. WINNAAR CONTROLEREN

Een horizontale rij:

```java
if (bord[0] == 'X' &&
    bord[1] == 'X' &&
    bord[2] == 'X') {

  println("X wint!");
}
```

Een andere rij:

```java
if (bord[3] == 'X' &&
    bord[4] == 'X' &&
    bord[5] == 'X') {

  println("X wint!");
}
```

Verticaal:

```java
if (bord[0] == 'X' &&
    bord[3] == 'X' &&
    bord[6] == 'X') {

  println("X wint!");
}
```

Diagonaal:

```java
if (bord[0] == 'X' &&
    bord[4] == 'X' &&
    bord[8] == 'X') {

  println("X wint!");
}
```

---
// 15. WIE IS AAN DE BEURT?

Gebruik een `boolean`.

```java
boolean spelerX = true;
```

Als X klaar is:

```java
spelerX = false;
```

Als O klaar is:

```java
spelerX = true;
```

Bijvoorbeeld:

```java
if (spelerX) {
  println("X is aan de beurt");
} else {
  println("O is aan de beurt");
}
```

---
// 16. VAK VAN BOTER-KAAS-EN-EIEREN BEREKENEN

Als je met muisklikken werkt:

```java
int kolom = mouseX / 200;
int rij = mouseY / 200;
```

Bijvoorbeeld:

```text
mouseX = 100 → kolom 0
mouseX = 300 → kolom 1
mouseX = 500 → kolom 2
```

En:

```text
mouseY = 100 → rij 0
mouseY = 300 → rij 1
mouseY = 500 → rij 2
```

---
// 17. VAN RIJ + KOLOM NAAR ARRAY-POSITIE

```java
int positie = rij * 3 + kolom;
```

Voorbeeld:

```text
rij = 0, kolom = 0 → positie 0
rij = 0, kolom = 1 → positie 1
rij = 1, kolom = 0 → positie 3
rij = 2, kolom = 2 → positie 8
```

---
// 18. MUISKLIK GEBRUIKEN

```java
void mousePressed() {

  println("Je hebt geklikt!");
}
```

Bijvoorbeeld een cirkel maken waar je klikt:

```java
void mousePressed() {
  ellipse(mouseX, mouseY, 50, 50);
}
```

---
// 19. MUISKLIK + ARRAY

Bijvoorbeeld een vak aanklikken:

```java
void mousePressed() {

  int kolom = mouseX / 200;
  int rij = mouseY / 200;

  int positie = rij * 3 + kolom;

  bord[positie] = 'X';
}
```

⚠️ Dit is de basis van een interactief boter-kaas-en-eieren-spel.

---
// 20. RANDOM TEGENSTANDER

Een computer kan bijvoorbeeld willekeurig een getal kiezen:

```java
int positie = int(random(9));
```

→ kiest een getal van 0 t/m 8.

Bijvoorbeeld:

```java
if (bord[positie] == ' ') {
  bord[positie] = 'O';
}
```

→ Alleen een leeg vak wordt gebruikt.

---
// 21. DOBBELSTEEN-MINI-GAME

Willekeurig getal 1 t/m 6:

```java
int dobbelsteen = int(random(1,7));

println(dobbelsteen);
```

Controleren:

```java
if (dobbelsteen == 6) {
  println("Je hebt 6!");
}
```

---
// 22. RAAD HET GETAL

```java
int geheimGetal = int(random(1,11));
int gok = 7;

if (gok == geheimGetal) {
  println("Goed!");
} else if (gok < geheimGetal) {
  println("Te laag!");
} else {
  println("Te hoog!");
}
```

Hier oefen je:

```text
random()
int
if
else if
else
==
<
>
```

---
// 23. SIMPELE SCORE-GAME

```java
int score = 0;

void draw() {

  background(255);

  text("Score: " + score, 20, 30);

  if (score >= 10) {
    text("Je hebt gewonnen!", 200, 250);
  }
}
```

Punten verhogen:

```java
void mousePressed() {
  score++;
}
```

---
// 24. EEN FUNCTIE VOOR EEN GAME-ONDERDEEL

Bijvoorbeeld speler tekenen:

```java
void tekenSpeler() {
  ellipse(250,250,50,50);
}
```

In `draw()`:

```java
void draw() {

  background(255);

  tekenSpeler();
}
```

→ Handig om grote programma's overzichtelijk te houden.

---
// 25. GAME IN FUNCTIES VERDELEN

```java
void draw() {

  background(255);

  tekenSpeler();
  tekenMunt();
  tekenScore();
}
```

Met:

```java
void tekenSpeler() {
  ellipse(250,250,50,50);
}

void tekenMunt() {
  ellipse(100,100,20,20);
}

void tekenScore() {
  text("Score: " + punten,20,30);
}
```

---

# 🧠 WAT JE BIJ EEN KLEINE GAME MOET HERKENNEN

Als de opdracht zegt...

```text
"laat de speler bewegen"
```

→ `x`, `y`, `keyPressed()`, `keyCode`

```text
"houd de score bij"
```

→ `int score`

```text
"tel er 1 bij op"
```

→ `score++`

```text
"willekeurige positie"
```

→ `random()`

```text
"als speler iets raakt"
```

→ `dist()` + `if`

```text
"houd speler binnen scherm"
```

→ `constrain()`

```text
"meerdere vakken/objecten"
```

→ `array` + `for`

```text
"controleer of iets gelijk is"
```

→ `==`

```text
"beide voorwaarden moeten kloppen"
```

→ `&&`

```text
"één van de voorwaarden moet kloppen"
```

→ `||`

```text
"herhaal dit 10 keer"
```

→ `for`

```text
"herhaal zolang..."
```

→ `while`

```text
"speler klikt"
```

→ `mousePressed()`

```text
"zet tekst op scherm"
```

→ `text()`

```text
"teken een vorm"
```

→ `rect()`, `ellipse()`, `triangle()`, `line()`

---

# ⭐ GAME-BOUWPLAN VOOR EEN TOETS

Als je ooit een kleine game moet maken, kun je ongeveer deze volgorde gebruiken:

```text
1. Maak het scherm
2. Maak variabelen
3. Teken de speler
4. Teken het doel/object
5. Laat de speler bewegen
6. Controleer botsing
7. Geef punten
8. Controleer winnen/verliezen
9. Voeg eventueel een startscherm toe
```

Basisstructuur:

```java
int spelerX = 250;
int spelerY = 250;
int punten = 0;

void setup() {
  size(500,500);
}

void draw() {

  background(255);

  // speler
  ellipse(spelerX, spelerY, 50, 50);

  // score
  text("Punten: " + punten, 20, 30);
}

void keyPressed() {

  if (keyCode == LEFT) {
    spelerX -= 5;
  }

  if (keyCode == RIGHT) {
    spelerX += 5;
  }

  if (keyCode == UP) {
    spelerY -= 5;
  }

  if (keyCode == DOWN) {
    spelerY += 5;
  }
}
```

Dit is **geen complete game**, maar een basis waar je tijdens een oefenopdracht verder op kunt bouwen.

# ⚠️ ONTHOUD VOOR DE TOETS

```text
=       waarde geven
==      vergelijken
!=      niet gelijk
>       groter
<       kleiner
>=      groter/gelijk
<=      kleiner/gelijk

&&      EN
||      OF
!       NIET

++      +1
--      -1

for     herhalen
while   herhalen zolang

if      controleren
else    anders

array   meerdere waarden bewaren

random  willekeurige waarde
dist    afstand berekenen
constrain binnen grenzen houden
map     waarde omrekenen

mouseX  muis X
mouseY  muis Y
keyCode toets
width   schermbreedte
height  schermhoogte

text()  tekst tekenen
fill()  vulkleur
stroke() randkleur
