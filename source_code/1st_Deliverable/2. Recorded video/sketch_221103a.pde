
import processing.video.*;

Movie video; 

void setup() 
{
  size(640, 360);
  video = new Movie(this, "video.MOV"); 
  video.loop();
}

void movieEvent(Movie video) 
{
  video.read();
}

void draw() 
{
  image(video, 0, 0, 640, 360);
  float r = map(mouseX, 0, width, 0, 4);
  video.speed(r); 
}
