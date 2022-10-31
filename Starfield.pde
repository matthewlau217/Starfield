  //your code here
  void setup()
  {
    background(0);
    size(500,500);
    Particle[] dots = new Particle[1000];
    for(int i = 0; i < dots.length;i++){
      dots[i] =  new Particle();
    }
  }
  void draw()
  {
    //your code here
  }
  class Particle
  {
    double myX, myY, myAngle, mySpeed;
    Particle(){
      myX = 320;
      myY = 240;
      myAngle;
      mySpeed = (int)(Math.random()*10);
    }
  }
  
  class OddballParticle //inherits from Particle
  {
    //your code here
  }
