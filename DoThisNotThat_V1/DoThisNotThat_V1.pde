//Global Variables
float buttonX1, buttonY1, ButtonWidth1, ButtonHeight1;
float buttonX2, buttonY2, ButtonWidth2, ButtonHeight2;
//
void setup() 
{
  //Display Geometry
  fullScreen(); //size( 600, 400);  //displayWidth, displayHeight
  //Display Orientation: Landscape, not portrait nor square
  println (displayWidth, displayHeight, width, height);
  String ls="Landscape or Square", p="portrait", DO="DisplayOrientation:", instruct="Turn your phone";
  int appWidth = displayWidth; //width
  int appHeight = displayHeight; //height
  String orientation = ( appWidth >= appHeight) ? ls : p ; //Ternary Operator, repeats IF-ELSE
  println (DO, orientation );
  println(appWidth, appHeight);
  //
  /*Population
   buttonX1 = ;
   buttonY1 = ;
   ButtonWidth1 = ; 
   ButtonHeight1 = ;
   buttonX2 = ;
   buttonY2 = ;
   ButtonWidth2 = ;
   ButtonHeight2 = ;
   */
}//End setup
//
void draw() 
{
  //rect(buttonX1, buttonY1, ButtonWidth1, ButtonHeight1); //DIV: "Click Me"
  //rect(buttonX2, buttonY2, ButtonWidth2, ButtonHeight2); //DIV: "Or Me"
  //rect(); //DIV: Display Rectangle
  //rect(); //DIV: Display Circle
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End keyPressed
//
//End MAIN
