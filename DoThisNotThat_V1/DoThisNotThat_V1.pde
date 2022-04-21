//Global Variables
float buttonX1, buttonY1, ButtonWidth1, ButtonHeight1;
float buttonX2, buttonY2, ButtonWidth2, ButtonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
//
void setup() 
{
  //Display Geometry
  size( 600, 400); //fullScreen();  //displayWidth, displayHeight
  //Display Orientation: Landscape, not portrait nor square
  println (displayWidth, displayHeight, width, height);
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Dude, turn your phone";
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  String orientation = ( appWidth >= appHeight) ? ls : p ; //Ternary Operator, repeats IF-ELSE
  println (DO, orientation );
  if (orientation==ls) 
  {
    println("Good to Go");
  } else {//Break app if not landscape
    println(instruct);
    appWidth = appWidth*0;
    appHeight = appHeight*0;
  }
  println("App Geometry is:", "\tApp Width", appWidth, "\t\tApp Height", appHeight);
  //
  //Population
   buttonX1 = appWidth*1/4;
   buttonY1 = appHeight*3/4;
   ButtonWidth1 = appWidth*1/5; 
   ButtonHeight1 = appHeight*1/5;
   buttonX2 = appWidth*3/4;
   buttonY2 = buttonY1;
   ButtonWidth2 = ButtonWidth1;
   ButtonHeight2 = ButtonHeight1;
   rectDisplayX =appWidth*1/8;
   rectDisplayY =appHeight*1/8;
   rectDisplayWidth =ButtonWidth1;
   rectDisplayHeight =ButtonWidth1;
   ellipseX =appWidth*6/8;
   ellipseY = rectDisplayY;
   ellipseXDiameter = appWidth*1/8; //Note: formulae not square but same
   ellipseYDiameter = appHeight*1/8;
   float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2;
   float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2;
   x = ellipseRectXCenter;
   y = ellipseRectYCenter;
   xDiameter = ellipseXDiameter;
   yDiameter = ellipseYDiameter;
}//End setup
//
void draw() 
{
  rect(buttonX1, buttonY1, ButtonWidth1, ButtonHeight1); //DIV: "Click Me"
  rect(buttonX2, buttonY2, ButtonWidth2, ButtonHeight2); //DIV: "Or Me"
  rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
  ellipse(x, y, xDiameter, yDiameter);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End keyPressed
//
//End MAIN
