void setup()
{
  size(300,300);
  noLoop();
  background(0);
}
void draw()
{
  background(255,255,255);
  for(int x = 0; x < 301; x = x + 50)
  {
    for(int y = 0; y < 301; y = y + 50)
    {
      //creates new die from class Die
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
}
void mousePressed()
{
  redraw(); 
}
void draw()
{
  background(255,255,255);
  for(int x = 0; x < 301; x = x + 50)
  {
    for(int y = 0; y < 301; y = y + 50)
    {
      //creates new die from class Die
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
}
class Die //draws one die
{
  int dieX,dieY,dieRoll;
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void show()
  {
    //die background
    fill(((int)(Math.random()*225)),((int)(Math.random()*225)),((int)(Math.random()*225)));
    rect(dieX, dieY,45,45,5);
  }
  void roll()
  {
    //die dots
    //roll number
    dieRoll = (int)(Math.random()*6)+1;
    stroke(#000000);
    fill(#FFFFFF);
    //drawing the dots depending on dieRoll number
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
}
