int startX=240;
int startY=(int)(Math.random()*100+230);
int endX=585;
int endY=(int)(Math.random()*100+230);
int x=200;
void setup()
{
  size(800,800);
  strokeWeight(2); 
  background(#31174D);
}
void draw()
{ 
  //fade rectangle
  noStroke();
  fill(#31174D);
  rect(0, 190, 800, 200);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX<586)
  {
  endX=startX+(int)(Math.random()*25);
  endY=startY+(int)(Math.random()*10-5);
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;
  }
  startX=240;
  startY=(int)(Math.random()*100+230);
  endX=585;
  endY=(int)(Math.random()*100+230);
  drawTeslas();
  drawFlashem();
}
void drawFlashem()
{
    if(mousePressed == true)  //Flash of the white screen
  {
    fill(255, 255, 255, 150);
    ellipse(160,290,200,200);
    ellipse(655,290,200,200);
  }
}
void drawTeslas()
{
  //left connector for tesla coil
  fill(#C10202);
  stroke(#000000);
  rect(130,200,50,500);
  //base of left tesla coil
  fill(#5A5456);
  stroke(#000000);
  rect(118,400,75,500);
  //right connector for tesla coil
  fill(#C10202);
  stroke(#000000);
  rect(632,200,50,500);
  //base of right tesla coil
  fill(#5A5456);
  stroke(#000000);
  rect(620,400,75,500);
  //ball of left tesla coil
  fill(#9B9194);
  stroke(#000000);
  ellipse(160,290,200,200);
  //ball of right tesla coil
  fill(#9B9194);
  stroke(#000000);
  ellipse(655,290,200,200);
}






