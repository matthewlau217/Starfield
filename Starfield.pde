Particle[] dots = new Particle[500];;
  void setup()
  {
    background(0);
    size(500,500);
    for(int i = 0; i < dots.length;i++) {
      dots[i] =  new Particle();
      dots[0] =  new OddballParticle();
    }
  }
  void draw()
  {
    noStroke();
    for (int i = 0; i < dots.length; i++) {
      dots[i].move();
      dots[i].show();
    }
  }
  class Particle
  {
    double myX, myY, myAngle;
    int mySpeed, myColor;
    Particle()
    {
      myX = 250;
      myY = 250;
      myAngle = 2 * (Math.random() * Math.PI);
      mySpeed = (int)(Math.random() * 10);
      myColor = (int)(Math.random() * 255);
    }
    void show() {
      fill((int)(Math.random() * 255));
      ellipse((float)myX, (float)myY, 1, 1);
    }
    void move() {
      myX += Math.cos(myAngle * mySpeed);
      myY += Math.sin(myAngle * mySpeed);
    }
  }
  
  class OddballParticle extends Particle
  {
    OddballParticle(){
      myX = myY = 235;
    }
  void move(){
    myX += (int)(Math.random()*3)-1;
    myY += (int)(Math.random()*3)-1;
  }
  void show(){
    noStroke();
    fill((int)(Math.random()*255));
    rect((float)myX,(float)myY,40,40);
  }
 }
