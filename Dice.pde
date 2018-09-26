void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(100,100,100);
	for(int y = 5; y <= 500; y+=55)
	{
		for(int x = 5; x <= 500; x+=55)
		{
		Die bobu = new Die(x,y);
		bobu.show();
		}
	}
}
// void mousePressed()
// {
	
// }
class Die //models one single dice cube
{
	int numRoll,myX,myY;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		noStroke();
		fill(255);
		rect(myX, myY, 50, 50, 5);
	}
}
