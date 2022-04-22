
//
void displayOrientation() 
{
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
    appWidth*= 0; //appWidth = appWidth*0;
    appHeight*= 0; //appHeight = appHeight*0;
  }
  println("App Geometry is:", "\tApp Width", appWidth, "\t\tApp Height", appHeight);
}//End displayOrientation
