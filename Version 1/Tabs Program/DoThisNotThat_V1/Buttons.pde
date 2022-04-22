void buttonsMousePressed() 
{
  rectON = false;
  ellipseON = false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+ButtonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+ButtonHeight1 ) rectON = true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+ButtonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+ButtonHeight2 ) ellipseON = true;
}//End buttonsMousePressed
