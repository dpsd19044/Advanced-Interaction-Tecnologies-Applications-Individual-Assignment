
import processing.video.*;

import qrcodeprocessing.*;

PImage img; 

void setup() 
{
  size(320, 320);
  img = loadImage("MyQRcode.jpg");
}

void draw() 
{
  background(0);
  image(img, -1, 0, width, height);
}
