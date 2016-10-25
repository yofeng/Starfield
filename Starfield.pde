Particle[] stars;
void setup()
{
	size(700,500);
	frameRate(40);
	stars = new Particle[1000];
	for (int i = 0; i < stars.length; i++)
	{
		stars[i] = new NormalParticle();
	}
		stars[0] = new OddballParticle();
		stars[1] = new JumboParticle();
}

void draw()
{
	background(0);
	for (int i = 0; i < stars.length; i++)
	{
		stars[i].move();
		stars[i].show();
	}
}

class NormalParticle implements Particle
{
	double myX, myY,dtheta,speed;
	int r,g,b;
	NormalParticle()
	{
		r = (int)(Math.random()*225)+30;
		g = (int)(Math.random()*255);
		b = (int)(Math.random()*200)+55;
		myX = (Math.random()*100)+250;
		myY = (Math.random()*100)+250;
		speed = (Math.random()*10);
		dtheta = (Math.random()*2)*Math.PI;
	}
	public void move()
	{
		myX = myX + (Math.cos(dtheta))*speed;
		myY = myY + (Math.sin(dtheta))*speed;
	}
	public void show()
	{
		fill(r,g,b);
		ellipse((float)myX, (float)myY, 8, 8);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double myX, myY,dtheta,speed;
	int r,g,b;
	OddballParticle()
	{
		b = (int)(Math.random()*200)+55;
		myX = (Math.random()*100)+350;
		myY = (Math.random()*100)+350;
		speed = (Math.random()*4);
		dtheta = (Math.random()*2)*Math.PI/2;
	}

	void move()
	{
		myX = myX + (Math.cos(dtheta))*speed;
		myY = myY + (Math.sin(dtheta))*speed;
	}
	void show()
	{
		fill(100,3,b);
		rect((float)myX, (float)myY, 50, 68);
	}
}
class JumboParticle extends NormalParticle
{
	double myX, myY,dtheta,speed;
	int r,g,b;
	JumboParticle()
	{
		r = (int)(Math.random()*225)+30;
		b = (int)(Math.random()*200)+55;
		myX = (Math.random()*100)+350;
		myY = (Math.random()*100)+350;
		speed = (Math.random()*5)+1;
		dtheta = (Math.random()*2)*Math.PI/2;
	}

	void move()
	{
		myX = myX + (Math.cos(dtheta))*speed;
		myY = myY + (Math.sin(dtheta))*speed;
	}
	void show()
	{
		fill(r,0,b);
		ellipse((float)myX, (float)myY, 15, 17);
	}
}

