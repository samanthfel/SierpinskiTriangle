public void setup()
{
size(400,400);
background(32, 78, 138);
}
public void draw()
{
  noStroke();
  sierpinski(0,400,400);

}
public void mousePressed()//optional
{
background((float)Math.random()*250, (float)Math.random()*250,(float)Math.random()*250);
}
public void sierpinski(int x, int y, int len) 
{
 if (len <= 20)
  triangle(x,y,x+(len/2), y-len, x+len, y);
 else{
    sierpinski(x,y,(len/2));
    sierpinski(x+(len/2), y, (len/2));
    sierpinski(x+(len/4),y-(len/2),(len/2));
 }
}
