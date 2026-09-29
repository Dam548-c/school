void setup() {
size(500,500);
background(255, 255, 255);

tekenVierkant(10,10,20);

println(verdubbelaar(5)); //print 10
int verdubbelaar (int getal) {
  return * 2;
}

void tekenVierkant(int x, int y, int grootte){
  rect(x,y,grootte,grootte);
}
