class dreiecke {

  int farbe;
  int menge=15;
  PVector[] Dreieck;
  float x;
  dreiecke() { 
    Dreieck=new PVector[menge];
    for (int i = 0; i < menge; i++) { 
      Dreieck[i]= new PVector(random(width), x+random(0, height));
    }
  }
  void fallen() {
    if (dreiecke) {
      for (int i = 0; i < menge; i++) {
        Dreieck[i].y+=25;
        fill((i * 8 + millis() / 10) % 255, (i * i + millis() / 10) % 255, (i * 3 + millis() / 10) % 255);
        stroke((i * 2 + millis() / 10) % 255, (i * 3 + millis() / 10) % 255, (i * 4 + millis() / 10) % 255);
        strokeWeight(5);
        triangle(Dreieck[i].x+30, Dreieck[i].y+125+x, Dreieck[i].x, Dreieck[i].y+75+x, Dreieck[i].x+75, Dreieck[i].y+75+x);
        if (Dreieck[i].y>=height) {
          Dreieck[i].y=-200;
          Dreieck[i].x=random(width);
        }
      }
    }
  }
}
//Du lachs
