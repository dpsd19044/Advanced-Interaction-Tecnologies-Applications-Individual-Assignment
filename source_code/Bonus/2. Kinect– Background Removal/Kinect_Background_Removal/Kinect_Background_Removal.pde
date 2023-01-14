//user map
 
import SimpleOpenNI.*;
SimpleOpenNI  kinect;      
int [] userMap;
//saved Background

PImage backgroundImage;
PImage resultImage;
 
void setup()
{
  size(640,795);
  backgroundImage = loadImage("skeleton.png");
  
  kinect = new SimpleOpenNI(this);
  if(kinect.isInit() == false)
  {
     println("Can't init SimpleOpenNI, maybe the camera is not connected!"); 
     exit();
     return;  
  }
 
  // enable depthMap generation 
  kinect.enableDepth();
 
  // enable RGB camera
  kinect.enableRGB(); 
 
  // enable skeleton generation for all joints
  kinect.enableUser();
 
  // turn on depth-color alignment 
  kinect.alternativeViewPointDepthToImage();
  resultImage = new PImage(640, 795, RGB);
  }
 
void draw()
{
  // update the cam
  background(backgroundImage);
  kinect.update();
 
  // get the Kinect color image
  PImage rgbImage = kinect.rgbImage(); 
  // prepare the color pixels 
 // rgbImage.loadPixels();
  image(rgbImage, 640, 0);
 
 
  int[] userList = kinect.getUsers();
  if(userList.length>0)
  {
    userMap = kinect.userMap();
    // load sketches pixels
    loadPixels();
   for(int i=0; i<userMap.length; i++)
    {
      if(userMap[i]!=0)
      {
         // set the sketch pixel to the color pixel
          resultImage.pixels[i] = rgbImage.pixels[i];
      }
      else
      {
        resultImage.pixels[i] = backgroundImage.pixels[i];
      }
    }
   resultImage.updatePixels();
    image(resultImage, 0, 0);
 
  }  
}
