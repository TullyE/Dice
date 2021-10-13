Die myD = new Die(250, 250);
void setup()
{
  noLoop();

  size(500, 500);
}
void draw()
{
  background(0);
  myD.roll();
  myD.show();
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
  private int size = width/2;

  Die(int x, int y) //constructor
  {
    this.x = x;
    this.y = y;
  }
  void roll()
  {
    
    this.num = (int) ((Math.random() * 6) + 1);
  }
  void show()
  {
    rect(this.x, this.y, this.size, this.size);
    if (num == 1 || num == 3 || num == 5) //middle
    {
      ellipse(x + size/2, y + size/2, size/5, size/5);
    }
    if (num == 2 || num == 3 || num == 4 || num == 5 || num == 6)//top left
    {
      ellipse(x + (size/5), y + (size/5), size/5, size/5);
    }
    if (num == 4 || num == 5 || num == 6)//top right
    {
      ellipse(x + size - (size/5) - 2, y + (size/5), size/5, size/5);
    }
    if (num == 4 || num == 5 || num == 6)//bottem left
    {
      ellipse(x + (size/5), y + size - (size/5) - 2, size/5, size/5);
    }
    if (num == 2 || num == 3 || num == 4 || num == 5 || num == 6)//bottem right
    {
      ellipse(x + size - (size/5) - 2, y + size - (size/5) - 2, size/5, size/5);
    }
    if (num == 6)
    {
      ellipse(x + size - (size/5) - 2, y + size/2, size/5, size/5);
      ellipse(x + (size/5), y + size/2, size/5, size/5);
    }
  }
}
