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
}//End setup
//
void draw() 
{
  background(black);
  rect(buttonX1, buttonY1, ButtonWidth1, ButtonHeight1); //DIV: "Click Me"
  rect(buttonX2, buttonY2, ButtonWidth2, ButtonHeight2); //DIV: "Or Me"
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  //
  fill(orange);
  textAlign(CENTER, CENTER);
  textFont(Buttonwordfont, 25);
  //
  text(RectWords, buttonX1, buttonY1, ButtonWidth1, ButtonHeight1 );
  text(EllipseWords, buttonX2, buttonY2, ButtonWidth2, ButtonHeight2);
  fill(white);
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
