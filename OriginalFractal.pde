public int changeLength;
public void setup()
{

 size(800, 800);
 background(50);
 changeLength = 800;

}
public void draw()
{

fractal(400,400,changeLength);
}

public void mousePressed()
{
 if (mouseButton == LEFT) 
 {
  changeLength = changeLength + 40;
 }
 if (mouseButton == RIGHT)
 {
  changeLength = changeLength - 40;
 }
}
public void fractal(int x, int y, int len) 
{

	fill(50);
	stroke(0,150,0);
	ellipse(x, y, len, len);
	fill(0);
	ellipse(x + len/4, y- len/8, len/20, len/20);
	ellipse(x - len/4, y- len/8, len/20, len/20);
	arc(x, y + len/4, len/2, len/7, 0 , PI);
	if(len > 40){
		
		fractal(x-len/4, y, len/2);
		fractal(x+len/4, y, len/2);
		fractal(x, y-len/4, len/2);
		fractal(x, y+len/4, len/2);
		
	}
}