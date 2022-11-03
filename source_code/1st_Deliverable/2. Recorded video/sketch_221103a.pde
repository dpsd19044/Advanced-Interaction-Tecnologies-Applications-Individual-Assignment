
import processing.video.*;

// Step 1. Declare Movie object
Movie video; 

void setup() {
  size(600, 400);

  // Step 2. Initialize Movie object
  video = new Movie(this, "IMG_5617.MOV"); 

  // Step 3. Start movie playing
  video.loop();
}

// Step 4. Read new frames from movie
void movieEvent(Movie video) {
  video.read();
}

void draw() {
  // Step 5. Display movie.
  float r = map(mouseX,0,width,0,4);
  video.speed(r);
  //Dislay frame
  image(video, 0, 0);
}
