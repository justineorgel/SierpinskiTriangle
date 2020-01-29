int value=color(255,255,255);
int num=300;
public void setup()
{
	size(1000,1000);
	background(0);
}
public void draw()
{
	fill(value);
	sierpinski(40,940,900);
}
public void mouseMoved()
{
	value=color(mouseX,mouseY,mouseX);
	if(num>=20){
		num=num-1;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=num){
		triangle(x,y,x+len,y,x+len/2,y-len);
	}else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);	
	}
}
