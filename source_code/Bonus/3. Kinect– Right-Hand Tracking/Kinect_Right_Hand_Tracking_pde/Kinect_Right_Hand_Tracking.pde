import SimpleOpenNI.*;
SimpleOpenNI kinect;

float[] xpos = new float[50]; 
float[] ypos = new float[50];

void setup()
{
  size(640,480);
  kinect= new SimpleOpenNI(this);
  kinect.enableDepth();
  
  //turn on tracking
  kinect.enableUser();  //in older versions, this took an argument
}

void draw()
{
  kinect.update();
  PImage depth=kinect.depthImage();
  image(depth,0,0);
  
  //make vector of ints to store users
  IntVector userList = new IntVector();
  
  //write list of users
  kinect.getUsers(userList);
  
  if (userList.size()>0)
  {
    int userId = userList.get(0);
    
    if (kinect.isTrackingSkeleton(userId))
    {
      //make vector for left hand
      PVector rightHand = new PVector();
      //put position of left hand into vector
      float confidence = kinect.getJointPositionSkeleton(userId, SimpleOpenNI.SKEL_RIGHT_HAND, rightHand);
      //convert detected hand to match depth image
      PVector convertedRightHand = new PVector();
      kinect.convertRealWorldToProjective(rightHand, convertedRightHand);
      //and display it
      
      if(confidence>0.5)
      {
          for (int i = 0; i < xpos.length-1; i ++ ) {
    
            xpos[i] = xpos[i+1];
            ypos[i] = ypos[i+1];}
  
  // Update the last spot in the array with the mouse location.
  xpos[xpos.length-1] = convertedRightHand.x; // Update the last spot in the array with the mouse location.
  ypos[ypos.length-1] = convertedRightHand.y;
  
  // Draw everything
  for (int i = 0; i < xpos.length; i ++ ) {
      noStroke();
      fill(150-i*2, 0, 255-i*10);
      star(xpos[i], ypos[i], 4.5, 10.5, 5);}
      }
    }
  }
  }


//user tracking callbacks  //in older versions all of the callbacks below were different
void onNewUser(SimpleOpenNI curContext,int userId)
{
  println("onNewUser - userId: " + userId);
  println("\tstart tracking skeleton");
   
  kinect.startTrackingSkeleton(userId);
}
 
void onLostUser(SimpleOpenNI curContext,int userId)
{
  println("onLostUser - userId: " + userId);
}
 
void onVisibleUser(SimpleOpenNI curContext,int userId)
{
  println("onVisibleUser - userId: " + userId);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
