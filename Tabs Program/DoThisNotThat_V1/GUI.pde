void GUI_draw() 
{
  background(black);
  rect(buttonX1, buttonY1, ButtonWidth1, ButtonHeight1); //DIV: "Click Me"
  rect(buttonX2, buttonY2, ButtonWidth2, ButtonHeight2); //DIV: "Or Me"
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Ellipse
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  //
  textDraw();
  //
}//End GUI
