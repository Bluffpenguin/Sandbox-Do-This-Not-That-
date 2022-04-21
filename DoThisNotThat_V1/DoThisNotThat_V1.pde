//Global Variables
float buttonX1, buttonY1, ButtonWidth1, ButtonHeight1;
float buttonX2, buttonY2, ButtonWidth2, ButtonHeight2;
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
  //if ( orientation==p ) println(instruct); //Testing the orientation variable
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
   buttonX1 = appWidth;
   buttonY1 = appHeight;
   ButtonWidth1 = appWidth; 
   ButtonHeight1 = appHeight;
   buttonX2 = appWidth;
   buttonY2 = appHeight;
   ButtonWidth2 = appWidth;
   ButtonHeight2 = appHeight;
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
