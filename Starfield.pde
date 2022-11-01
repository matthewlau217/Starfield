Particle[] dots;
  void setup()
  {
    background(0);
    size(500,500);
    dots = new Particle[1000];
    for(int i = 0; i < dots.length;i++) {
      dots[i] =  new Particle();
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
      fill(myColor);
      ellipse((float)myX, (float)myY, 1, 1);
    }
    void move() {
      myX = myX + Math.cos(myAngle * mySpeed);
      myY = myY + Math.sin(myAngle * mySpeed);
    }
  }
  
  class OddballParticle //inherits from Particle
  {
    //your code here
  }
