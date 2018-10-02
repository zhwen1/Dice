void setup()
{
	noLoop();
	size(500,600);
}

int counting = 0;
void draw()
{
	background((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
	for(int y = 5; y <= 500; y+=55)
	{
		for(int x = 5; x <= 500; x+=55)
		{
		Die bobu = new Die(x,y);
		bobu.roll();
		bobu.show();
		counting = counting + bobu.numRoll;
		}
	}
	textSize(25);
	text("Dice roll: "+counting,150,580);
}
 void mousePressed()
 {
	redraw();
	counting = 0;
 }
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
		 		ellipse(myX+10, myY+10, 10,10);
        ellipse(myX+40,myY+40,10,10);
		 	}
		 if(numRoll==3)
		 	{
		 		ellipse(myX+25, myY+25, 10,10);
        ellipse(myX+10, myY+10, 10,10);
        ellipse(myX+40,myY+40,10,10);
		 	}
		 if(numRoll==4)
		 	{
        ellipse(myX+10, myY+10, 10,10);
        ellipse(myX+40,myY+40,10,10);
        ellipse(myX+40, myY+10, 10,10);
        ellipse(myX+10,myY+40,10,10);
		 	}	
		 if(numRoll==5)
		 	{
        ellipse(myX+10, myY+10, 10,10);
        ellipse(myX+40,myY+40,10,10);
        ellipse(myX+40, myY+10, 10,10);
        ellipse(myX+10,myY+40,10,10);
        ellipse(myX+25, myY+25, 10,10);
		 	}
		 if(numRoll==6)
		 	{
        ellipse(myX+10, myY+10, 10,10);
        ellipse(myX+40,myY+40,10,10);
        ellipse(myX+40, myY+10, 10,10);
        ellipse(myX+10,myY+40,10,10);
        ellipse(myX+10, myY+25, 10,10);
        ellipse(myX+40, myY+25, 10,10);
        
		 	} 
	}
}
