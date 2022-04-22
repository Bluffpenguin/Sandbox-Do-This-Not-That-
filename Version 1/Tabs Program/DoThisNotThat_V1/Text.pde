void textSetup() 
{
    Buttonwordfont = createFont("Corbel", 48);
}//End textSetup
//
void textDraw() 
{
  //Text
  fill(orange);
  textAlign(CENTER, CENTER);
  textFont(Buttonwordfont, 25);
  //
  text(RectWords, buttonX1, buttonY1, ButtonWidth1, ButtonHeight1 );
  text(EllipseWords, buttonX2, buttonY2, ButtonWidth2, ButtonHeight2);
  fill(white);
}//End textDraw
//
