import processing.opengl.*;
import SimpleOpenNI.*;
import ddf.minim.*;

SimpleOpenNI kinect;

float rotation = 0;


Minim minim;

//AudioPlayer objects 
AudioPlayer cat1;
AudioPlayer cat2;
AudioPlayer cat3;
AudioPlayer dog1;
AudioPlayer dog2;
AudioPlayer dog3;

// declaring the hotpoints
Hotpoint c1Trigger;
Hotpoint c2Trigger;
Hotpoint c3Trigger;
Hotpoint d1Trigger;
Hotpoint d2Trigger;
Hotpoint d3Trigger;

float s = 1;

void setup() {
  size(1024, 768, OPENGL);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();

  minim = new Minim(this);
  // load both audio files
  
  cat1 = minim.loadFile("cat1.wav");
  cat2 = minim.loadFile("cat2.wav");
  cat3 = minim.loadFile("cat3.wav");
  dog1 = minim.loadFile("dog1.wav");
  dog2 = minim.loadFile("dog2.wav");
  dog3 = minim.loadFile("dog3.wav");
  
  // initialize hotpoints with their origins (x,y,z) and their size
  
  c1Trigger = new Hotpoint(-300, 300, 600, 120 );
  c2Trigger = new Hotpoint(-400, 0, 600, 120 );
  c3Trigger = new Hotpoint(-150, -300, 600, 120 );
  d1Trigger = new Hotpoint(300, 300, 600, 120 );
  d2Trigger = new Hotpoint(400, 0, 600, 120 );
  d3Trigger = new Hotpoint(150, -300, 600, 120);
  
}

void draw() {
  background(0);
  kinect.update();

  translate(width/2, height/2, -1000);
  rotateX(radians(180));

 // translate(0, 0, 1400);
 // rotateY(radians(map(mouseX, 0, width, -180, 180)));

  translate(0, 0, s*-1000);
  scale(s);


  stroke(255);

  PVector[] depthPoints = kinect.depthMapRealWorld();

  for (int i = 0; i < depthPoints.length; i+=10) {
    PVector currentPoint = depthPoints[i];

    // have each hotpoint check to see
    // if it includes the currentPoint 
    
  c1Trigger.check(currentPoint);
  c2Trigger.check(currentPoint); 
  c3Trigger.check(currentPoint); 
  d1Trigger.check(currentPoint); 
  d2Trigger.check(currentPoint); 
  d3Trigger.check(currentPoint);

    point(currentPoint.x, currentPoint.y, currentPoint.z);
  }



  if(c1Trigger.isHit()) {
    cat1.play();
  }  
  
  if(!cat1.isPlaying()) {
    cat1.rewind();
    cat1.pause();
  }

  if(c2Trigger.isHit()) {
    cat2.play();
  }  
  
  if(!cat2.isPlaying()) {
    cat2.rewind();
    cat2.pause();
  }

  if(c3Trigger.isHit()) {
    cat3.play();
  }  
  
  if(!cat3.isPlaying()) {
    cat3.rewind();
    cat3.pause();
  }
  
    if(d1Trigger.isHit()) {
    dog1.play();
  }  
  
  if(!dog1.isPlaying()) {
    dog1.rewind();
    dog1.pause();
  }

    if(d2Trigger.isHit()) {
    dog2.play();
  }  
  
  if(!dog2.isPlaying()) {
    dog2.rewind();
    dog2.pause();
  }

    if(d3Trigger.isHit()) {
    dog3.play();
  }  
  
  if(!dog3.isPlaying()) {
    dog3.rewind();
    dog3.pause();
  }



  // display each hotpoint
  // and clear its points
  c1Trigger.draw();
  c1Trigger.clear();
  
  c2Trigger.draw();
  c2Trigger.clear();
  
  c3Trigger.draw();
  c3Trigger.clear();
  
  d1Trigger.draw();
  d1Trigger.clear();
  
  d2Trigger.draw();
  d2Trigger.clear();
  
  d3Trigger.draw();
  d3Trigger.clear();
  
}

void stop()
{
  // make sure to close
  // both AudioPlayer objects
  cat1.close();
  cat2.close();
  cat3.close();
  dog1.close();
  dog2.close();
  dog3.close();

  minim.stop();
  super.stop();
}

void keyPressed() {
  if (keyCode == 38) {
    s = s + 0.01;
  }
  if (keyCode == 40) {
    s = s - 0.01;
  }
}
