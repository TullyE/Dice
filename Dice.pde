int num = 10;
int dieSize;
void setup()
{
  noLoop();

  size(500, 500);
}
void draw()
{
  dieSize = width/num;
  background(50);
  for(int i = 1; i <= num; i ++)
  {
    for(int j = 1; j <= num; j ++)
    {
      Die myD = new Die(i * dieSize - dieSize/2, j * dieSize - dieSize/2, dieSize);
      myD.roll();
      myD.show();
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
  private int num;
  private int x;
  private int y;
  private int size;
  private int cSize;

  Die(int x, int y, int size) //constructor
  {
    this.x = x;
    this.y = y;
    this.size = size;
    this.cSize = size/4;
  }
  void roll()
  {

    this.num = (int) ((Math.random() * 6) + 1);
  }
  void show()
  {
    fill(255);
    rectMode(CENTER);
    rect(x, y, size, size, size/10);
    fill(5);
    if (num % 2 == 1) // CENTER
    {
      ellipse(x, y, cSize, cSize);
    }
    if (num != 1) //TOP LEFT and BOTTEM RIGHT
    {
      ellipse(x - cSize, y - cSize, cSize, cSize); // top left
      ellipse(x + cSize, y + cSize, cSize, cSize); //bottem right
    }
    if (num >= 4) //TOP RIGHT and BOTTEM LEFT
    {
      ellipse(x + cSize, y - cSize, cSize, cSize); //top right
      ellipse(x - cSize, y + cSize, cSize, cSize); //bottem left
    }
    if (num == 6)
    {
      ellipse(x - cSize, y, cSize, cSize);
      ellipse(x + cSize, y, cSize, cSize);
    }
  }
}
