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
		bobu.roll();
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
		numRoll = (int)(Math.random()*6)+1;
	}
	void show()
	{
		noStroke();
		fill(255);
		rect(myX, myY, 50, 50, 5);
		fill(0);
		if(numRoll==1)
			{
				ellipse(myX+25, myY+25, 10,10);
			}
		if(numRoll==2)
			{
				ellipse(myX+25, myY+25, 10,10);
			}
		if(numRoll==3)
			{
				ellipse(myX+25, myY+25, 10,10);
			}
		if(numRoll==4)
			{
				ellipse(myX+25, myY+25, 10,10);
			}		if(numRoll==1)
		if(numRoll==5)
			{
				ellipse(myX+25, myY+25, 10,10);
			}
		else
			{
				ellipse(myX+25, myY+25, 10,10);
			} 
	}
}
