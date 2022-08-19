class Spiral
{
  float r = 0;
  float theta = 0;
  boolean bigger;

  ArrayList<PVector> pos;

  Spiral ()
  {
    pos = new ArrayList<PVector>();
    bigger = true;
  }

  void Update ()

  {// Polar to Cartesian conversion
    if (spirale) {
      float x = r * cos(theta);
      float y = r * sin(theta);

      strokeWeight(5);

      // Adjust for center of window
      if (bigger)
        pos.add(new PVector(x+width/2, y+height/2));
      else if (pos.size() > 0)
        pos.remove(pos.size() - 1);

      for (int i = 1; i < pos.size(); i++)
      {
        stroke((i * 2 + millis() / 100) % 255, (i * 3 + millis() / 100) % 255, (i * 4 + millis() / 100) % 255);
        line(pos.get(i - 1).x, pos.get(i - 1).y, pos.get(i).x, pos.get(i).y);
      }


      if (pos.size() > 2)
      {
        for (int i = 0; i < 10; i++)
          line(width / 2, height / 2, pos.get((int)random(pos.size())).x, pos.get((int)random(pos.size())).y);
      }


      // Increment the angle
      theta += bigger ? .3 : -.3;
      // Increment the radius
      r += bigger ? 1 : -1;

      if (r >= width / 3 * 2)
        bigger = false;
      else if (r <= 0)
        bigger = true;
    }
  }
}
