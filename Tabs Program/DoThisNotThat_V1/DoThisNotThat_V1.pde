//Global Variables
float buttonX1, buttonY1, ButtonWidth1, ButtonHeight1;
float buttonX2, buttonY2, ButtonWidth2, ButtonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white it not night mode
boolean rectON=false, ellipseON=false;
PFont Buttonwordfont;
String RectWords = "Click Me";
String EllipseWords = "Or Me";
color orange = #FFA800;
//
void setup() 
{
  //Display Geometry
  size( 600, 400); //fullScreen();  //displayWidth, displayHeight
  displayOrientation();
  population();
  textSetup();
}//End setup
//
void draw() 
{
  GUI_draw();
  textDraw();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
  rectON = false;
  ellipseON = false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+ButtonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+ButtonHeight1 ) rectON = true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+ButtonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+ButtonHeight2 ) ellipseON = true;
}//End keyPressed
//
//End MAIN
