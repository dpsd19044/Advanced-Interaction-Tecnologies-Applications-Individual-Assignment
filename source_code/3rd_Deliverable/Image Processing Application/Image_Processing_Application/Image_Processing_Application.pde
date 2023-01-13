import TUIO.*; //<>//
TuioProcessing tuioClient;

float cursor_size = 15;
float object_size = 60;
float table_size = 760;
float scale_factor = 1;

PFont font;
PImage img1;
PImage img2;
PImage img3;
int imagewidth, imageheight;
boolean verbose = false; // print console debug messages
boolean callback = true; // updates only after callbacks
boolean showImage = false;

void setup()
{
  noCursor();
  size(990, 990);
  noStroke();
  fill(0);

  img1 = loadImage("Hand.JPG");
  img2 = loadImage("BussWhite.jpg");
  img3 = loadImage("BussBlack.jpg");
  //back = loadImage("background.png");
  // periodic updates
  if (!callback) 
  {
    frameRate(60);
    loop();
  } else noLoop(); // or callback updates 

  font = createFont("Arial", 18);
  scale_factor = height/table_size;

  tuioClient  = new TuioProcessing(this);
}

void draw()
{
  background(255);
  textFont(font, 18*scale_factor);

  //float obj_size = object_size*scale_factor; 
  //float cur_size = cursor_size*scale_factor; 

  ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();
  for (int i=0; i<tuioObjectList.size(); i++) 
  {
    TuioObject tobj = tuioObjectList.get(i);
    //images
    if (tobj.getSymbolID() == 0)
    {
      stroke(0);
      fill(0, 0, 0);
      pushMatrix();    
      popMatrix();
      fill(255);
      image(img1, posX, posY, width/2, height/2); 
      showImage = true; 
      ;
    }
    if (tobj.getSymbolID() == 1)
    {  
      stroke(0);
      fill(0, 0, 0);
      pushMatrix();
      popMatrix();
      fill(255);
      image(img2, posX, posY, width/4, height/2); 
      showImage = true; 
      ;
    }
    if (tobj.getSymbolID() == 2)
    {  
      stroke(0);
      fill(0, 0, 0);
      pushMatrix();
      popMatrix();
      fill(255);
      image(img3, posX, posY, width/4, height/2); 
      showImage = true; 
      ;
    }

    // filters
    if (tobj.getSymbolID() == 3)
    {
      filter(GRAY);
    }
    if (tobj.getSymbolID() == 4)
    {
      filter(INVERT);
    }
    if (tobj.getSymbolID()==5)
    {
      filter(THRESHOLD);
    } 
  }


  // --------------------------------------------------------------
 // called when an object is added to the scene
void addTuioObject(TuioObject tobj) {
  if (verbose) println("add obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle());
}

// called when an object is moved
void updateTuioObject (TuioObject tobj) {
  if (verbose) println("set obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle()
  +" "+tobj.getMotionSpeed()+" "+tobj.getRotationSpeed()+" "+tobj.getMotionAccel()+" "+tobj.getRotationAccel());
          
  posX = round(tobj.getX()*width);
  posY = round(tobj.getY()*height); 

}
// called when an object is removed from the scene
void removeTuioObject(TuioObject tobj) {
  if (verbose) println("del obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+")");
}

// --------------------------------------------------------------
// called at the end of each TUIO frame
void refresh(TuioTime frameTime) {
  if (verbose) println("frame #"+frameTime.getFrameID()+" ("+frameTime.getTotalMilliseconds()+")");
  if (callback) redraw();
}
