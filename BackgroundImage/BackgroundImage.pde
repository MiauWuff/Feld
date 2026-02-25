PImage wa;
PImage mo;
PImage la;
float gr = 0.1;
void setup() {
  pixelDensity(2);
  //water
    size(5000,5000);
  wa = loadImage("water.png");
  //mountain
  mo = loadImage("mountain.png");
  //land
  la = loadImage("land.png");
}

void draw() {
  image(wa, 0, 0, width * gr, height * gr); //Bild platzieren
  image(mo, 500, 0, width * gr, height * gr); //Bild platzieren
  image(la, 1000, 0, width * gr, height * gr); //Bild platzieren

  
}
