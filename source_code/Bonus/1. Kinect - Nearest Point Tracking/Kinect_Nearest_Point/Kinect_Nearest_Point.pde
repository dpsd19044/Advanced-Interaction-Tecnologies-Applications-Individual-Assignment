import SimpleOpenNI.*;
SimpleOpenNI  kinect;
int closestValue;
int closestX;
int closestY;
int[] xpos = new int[50]; 
int[] ypos = new int[50];

void setup()
{
  // double the width to display two images side by side
  size(640, 480);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();  
}

void draw()
{
  closestValue=8000;
  kinect.update();

 int[] depthValues = kinect.depthMap();
 
 for(int y=0; y < 480; y++){
   for(int x=0; x < 640; x++){
     int i=x+y*640;
     int currentDepthValue=depthValues[i];
     if(currentDepthValue>0 && currentDepthValue<closestValue){
       closestValue=currentDepthValue;
       closestX=x;
       closestY=y;}}}
       
       image(kinect.depthImage(),0,0);
       
       for (int i = 0; i < xpos.length-1; i ++ ) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. Stop at the second to last element.
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  // Update the last spot in the array with the mouse location.
  xpos[xpos.length-1] = closestX; 
  ypos[ypos.length-1] = closestY;
  for (int i = 0; i < xpos.length; i ++ ) {
       noStroke();
       fill(random(0, 255), random(0, 255), random(0, 255));
       ellipse(xpos[i],ypos[i],i,i);
}}
