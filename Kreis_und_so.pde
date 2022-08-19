
class Kreis

{

  float  x; //Hintergrund farbe
  float y;
  boolean Hintergrund; //Hintergrund boolean
  boolean Kreis; // Kreis boolean  

  void Zeichne() {
    if (kreise) {
      x+=Hintergrund?-1:1;
      y+=Kreis?-10:10;
      if (x==255) {
        Hintergrund=true;
      }

      if (x==0) {
        Hintergrund=false;
      }

      stroke(0, millis() / 50 % 255, 0, 150);
      strokeWeight(10);
      fill(millis() / 80 % 255, 100 + millis() / 100 % 255, 200 + millis() / 120 % 255, 150);
      circle(width/2, height/2, y);

      if (y==height) {
        Kreis=true;
      }
      if (y==0) {
        Kreis=false;
      }
    }
  }
}
