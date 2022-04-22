//
void population() 
{
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
  Buttonwordfont = createFont("Corbel", 48);
}//End population
