//
//2024/5/27
//1-3-6 ooiwa chika
void setup()
{
  size(400, 300);
}
float x=random(400);
float y=random(300);
float s=3;
float z=2;
int A=0;
void draw()
{
  background(255);
  if (A%3==0)
  {
    fill(0, 255, 0);
  } else if (A%3==1)
  {
    fill(255, 255, 0);
  } else
  {
    fill(255, 0, 0);
  }

  circle(x, y, 30);
  x=x+s;
  y=y+z;

  if (x+30>width)
  {
    A=A+1;
    s=-s;
  } else if (x<0)
  {
    A=A+1;
    s=-s;
  }

  if (y>height)
  {
    A=A+1;
    z=-z;
  } else if (y<0)
  {
    A=A+1;
    z=-z;
  }
}
