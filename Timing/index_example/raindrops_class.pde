class Raindrop {
  PVector loc, vel, acc;
  int d;
  color c;

  Raindrop() {
    d=10;
    loc = new PVector (random(0, width), 0);
    vel = new PVector (0, random(0, 2));
    acc = new PVector(0, .001);
   
  }


  void display() { 
   colorMode(HSB,360,100,100);
    fill(181,70,99);
    ellipse(loc.x, loc.y, d, d);
  }

  void fall() {

    loc.add(vel); 
    vel.add(acc);
  }
  void reset() {
    loc.set(random(width), 0);
    vel.set(0, random(1, 4));
  }
  void colorChange() {
    c=color(0, 55, random(100,255));
  }
}


