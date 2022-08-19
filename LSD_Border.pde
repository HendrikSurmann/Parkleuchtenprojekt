class LSD_Border {

  float speed = 20;
  int status;

  float bottomSizeX, sideSizeY, topSizeX;

  void Border() {   
    if (border) {
      rectMode(CENTER);
      noStroke();

      fill((millis() / 10) % 255, (100 + millis() / 10) % 255, (200 + millis() / 10) % 255);  

      rect(width / 2, height, bottomSizeX, 50);

      rectMode(CORNERS);
      rect(0, height - sideSizeY, 25, height);
      rect(width - 25, height - sideSizeY, width, height);

      rect(0, 0, topSizeX, 25);
      rect(width, 0, width - topSizeX, 25);


      if (status == 0) // bottom Line
      {
        bottomSizeX += speed;
        if (bottomSizeX >= width)
          status = 1;
      } else if (status == 1) // Side Lines
      {
        sideSizeY += speed;

        if (sideSizeY >= height)
          status = 2;
      } else if (status == 2) // Top Line
      { 
        topSizeX += speed;

        if (topSizeX >= width / 2)
          status = 3;
      } else if (status == 3) { 
        topSizeX -= speed;

        if (topSizeX <= 0)
          status = 4;
      } else if (status == 4) 
      {
        sideSizeY -= speed;

        if (sideSizeY <= 0)
          status = 5;
      } else if (status == 5)
      {
        bottomSizeX -= speed;

        if (bottomSizeX <= 0)
          status= 0;
      }


      rectMode(CENTER); //Background 
      fill(#000000);                                   
      //rect(x, height/2, width-50, height-50);
    }
  }
}
