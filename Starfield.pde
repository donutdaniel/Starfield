Particle[] poop = new Particle[500];
void setup()
{
	size(1000,1000);
	frameRate(40);
		for(int i=2;i<poop.length;i++){
			if(i%2==0){
			poop[i]=new NormalParticle();
		}else {
			poop[i]=new HyperspaceParticle(); 
		}
		}
		poop[0]=new OddballParticle();
		poop[1]=new JumboParticle();
}	
void draw()
{
	background(0);
	for(int i=0;i<poop.length;i++){
			poop[i].setA(50);
			poop[i].show();
			poop[i].move();
			poop[i].setA(80);
			poop[i].show();
			poop[i].move();
			poop[i].setA(120);
			poop[i].move();
			poop[i].show();
			poop[i].setA(150);
			poop[i].move();
			poop[i].show();
			poop[i].setA(250);
			poop[i].move();
			poop[i].show();

	}
} 
class NormalParticle implements Particle
{
	double x,y,angle,speed;
	int r,g,b,a;

		NormalParticle(){
			x=500;
			y=500;
			angle=(Math.random()*(Math.PI*2));
			speed=(Math.random()*8);
			r=(int)(Math.random()*256);
			g=(int)(Math.random()*256);
			b=(int)(Math.random()*256);
			a=0;
		} 

		public void move(){
			x+=Math.cos(angle)*speed;
			y+=Math.sin(angle)*speed;
			angle+=0.02;
			speed-=0.005;
		}

		public void show(){
			noStroke();
			fill(r,g,b,a);
			ellipse((int)x,(int)y,5,5);
		}

		public void setA(int a1){
			a=a1;
		}
}

class HyperspaceParticle implements Particle 
{
	double x,y,angle,speed;
	int r,g,b,a;

		HyperspaceParticle(){
			x=500;
			y=500;
			angle=(Math.random()*(Math.PI*2));
			speed=(Math.random()*8);
			r=255;
			g=255;
			b=255;
			a=0;
		} 

		public void move(){
			x+=Math.cos(angle)*speed;
			y+=Math.sin(angle)*speed;
		}

		public void show(){
			noStroke();
			fill(r,g,b,a);
			ellipse((int)x,(int)y,3,3);
			/*if((x<-100||x>1100)&&(y<-100||y>1100)) {
				x=500;
				y=500;
			}*/
		}

		public void setA(int a1){
			a=a1;
		}
}

interface Particle
{
	public void show();
	public void move();
	public void setA(int a1);
}
class OddballParticle implements Particle
{
	double x,y,angle,speed;
	int a;

		OddballParticle(){
			x=500;
			y=500;
			angle=(Math.random()*(Math.PI*2));
			speed=10;
			a=0;
		} 

		public void move(){
			x+=Math.cos(angle)*speed;
			y+=Math.sin(angle)*speed;
			angle+=0.03;
		}

		public void show(){
			noStroke();
			fill(255,225,225,a);
			ellipse((int)x,(int)y,20,20);
		}

		public void setA(int a1){
			a=a1;
		}
}
class JumboParticle extends NormalParticle
{
	public void show(){
		noStroke();
		fill(50,205,250,a);
		ellipse((int)x,(int)y,60,60);
	}

}

