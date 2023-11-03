Particle[] fireworks;

void setup() {
  size(700, 700);
  fireworks = new Particle[1400];
  for (int i = 0; i < 700; i++) {
    fireworks[i] = new Particle();
  }
      for (int i = 700; i < 1400; i++) {
     fireworks[i] = new OddballParticle();
  }
}

void draw() {
  background(0);

  for (int i = 0; i < fireworks.length; i++) {
    fireworks[i].show();
    fireworks[i].move();
  }
}

void mousePressed() {
  for (int i = 0; i < 1400; i++) {
    fireworks[i] = new Particle();
  }
      for (int i = 700; i < 1400; i++) {
     fireworks[i] = new OddballParticle();
  }
}

class Particle {
  double mySpeed, myAngle, myX, myY;
  int myColor, mySize;

  Particle() {
    myX = mouseX;
    myY = mouseY;
    myColor = color(222, (int)(Math.random() * 160), (int)(Math.random() * 160));
    mySpeed = Math.random() * 10 + 1;
    myAngle = Math.random() * 2 * Math.PI;
    mySize=7;
  }

  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }

  void show() {
    fill(myColor);
    ellipse((float) myX, (float) myY, mySize, mySize);
  }
}

class OddballParticle extends Particle //change speed, size, and color
{
  OddballParticle(){
     myX = mouseX;
    myY = mouseY;
    myColor = color((int)(Math.random() * 170), (int)(Math.random() * 120+63), 227);
    mySpeed = Math.random() * 10 + -2;
    myAngle = Math.random() * 2 * Math.PI;
     mySize=4;
  }
}
