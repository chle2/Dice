void setup()
{
  size (300,300); 
  noLoop();
  background(0);
}
void draw()
{
  //your code here
  for (int x = 0; x < 200; x = x + 25) 
  {
    for (int y = 0; y < 300; y = y + 25)
    {
      Die bob = new Die(x,y); 
      bob.roll(); 
      bob.show(); 
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int dieX, dieY, dieRoll; 
  Die(int x, int y) //constructor
  {
    //variable initializations here
    dieX = x; 
    dieY = y; 
   
  }
}
  void roll()
  {
    //your code here
    dieRoll = (int) ((Math.random()*6)+1);
    stroke(#000000); 
    fill(#FFFFFF); 
    if(dieRoll == 1)
    {
      ellipse(dieX+25,dieY+25,10,10);
      
    }
    else if(dieRoll == 2)
    {
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
     
    }
    else if(dieRoll == 3)
    {
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
     
    }
    else if(dieRoll == 4)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
     
    }
    else if(dieRoll == 5)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
     
    }
    else
    {
      ellipse(dieX+15, dieY+13, 10, 10);
      ellipse(dieX+15, dieY+25, 10, 10);
      ellipse(dieX+15, dieY+37, 10, 10);
      ellipse(dieX+35, dieY+13, 10, 10);
      ellipse(dieX+35, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+37, 10, 10);
    }
  }
  void show()
  {
    //your code here
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255))); 
    rect(dieX, dieY, 50, 50, 50);
  }
