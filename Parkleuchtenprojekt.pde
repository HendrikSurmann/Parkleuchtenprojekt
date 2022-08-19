PImage Press_Start;
int punkte;
LSD_Border lsd_border;

Spiral s;
Kreis k;
dreiecke Dreiecke;

boolean dreiecke, kreise, border, spirale;

void setup ()
{
  fullScreen();
  Press_Start=loadImage("Press Start.png");
  s = new Spiral();
  k = new Kreis();
  lsd_border = new LSD_Border();
  Dreiecke = new dreiecke();
}

void draw ()
{
  background(0);
  Dreiecke.fallen();
  s.Update();
  k.Zeichne();
  lsd_border.Border();
}

void keyPressed ()
{
  if (keyCode == UP)
    dreiecke = !dreiecke;
  else if (keyCode == RIGHT)
    kreise = !kreise;
  else if (keyCode == DOWN)
    border = !border;
  else if (keyCode == LEFT)
    spirale = !spirale;
}
