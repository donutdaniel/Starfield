Particle[] poop = new Particle[500];
void setup()
{
	size(1000,1000);
		for(int i=0;i<poop.length-2;i++){
			poop[i]=new NormalParticle();
		}
		poop[498]=new OddballParticle();
		poop[499]=new JumboParticle();
}	
void draw()
{
	background(0);
	for(int i=0;i<poop.length;i++){
		poop[i].move();
		poop[i].show();
	}
} 
class NormalParticle implements Particle
{
	double x,y,angle,speed;
	int r,g,b;

		NormalParticle(){
			x=500;//(Math.random()*801);
			y=500;//(Math.random()*801);
			angle=(Math.random()*(Math.PI*2));
			speed=(Math.random()*10);
			r=(int)(Math.random()*256);
			g=(int)(Math.random()*256);
			b=(int)(Math.random()*256);
		} 

		void move(){
			x+=Math.cos(angle)*speed;
			y+=Math.sin(angle)*speed;
			angle+=0.02;
			speed-=0.005;
		}

		void show(){
			noStroke();
			fill(r,g,b,220);
			ellipse((int)x,(int)y,5,5);
		}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double x,y,angle,speed;
	int colour;

		OddballParticle(){
			x=500;//(Math.random()*801);
			y=500;//(Math.random()*801);
			angle=(Math.random()*(Math.PI*2));
			speed=10;//(Math.random()*11);
		} 

		void move(){
			x+=Math.cos(angle)*speed;
			y+=Math.sin(angle)*speed;
			angle+=0.03;
		}

		void show(){
			noStroke();
			fill(255);
			ellipse((int)x,(int)y,20,20);
		}
}
class JumboParticle extends NormalParticle
{
	public void show(){
		noStroke();
		fill(50,205,250,180);
		ellipse((int)x,(int)y,80,80);
	}
}

