//Global Variables
float buttonX1, buttonY1, ButtonWidth1, ButtonHeight1;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white it not night mode
boolean rectON=false, ellipseON=false;
PFont Buttonwordfont;
String RectWords = "Click Me";
color orange = #FFA800;
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
  Buttonwordfont = createFont("Corbel", 48);
}//End setup
//
void draw() 
{
  background(black);
  rect(buttonX1, buttonY1, ButtonWidth1, ButtonHeight1); //DIV: "Click Me"
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  //
  fill(orange);
  textAlign(CENTER, CENTER);
  textFont(Buttonwordfont, 25);
  //
  text(RectWords, buttonX1, buttonY1, ButtonWidth1, ButtonHeight1 );
  fill(white);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
  println("Before the Button:", "\tRect:", rectON, "\tEllipse", ellipseON);
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+ButtonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+ButtonHeight1 ) {
    if (rectON==true) 
    {
      rectON=false;
      ellipseON=true;
    } else 
    {
      rectON=true;
      ellipseON=false;
    }
  }
}//End keyPressed
//
//End MAIN
