class Raindrop {
  int d;
  PVector loc, vel, acc;
  color c;


  Raindrop() {
    //    d=50;
    loc = new PVector (random(width), random(-height/2, -d));
    vel = new PVector (0, random(1, 4));
    acc = new PVector(0, .001);
    d = 10;
    //    int r=int(random(1,5));
    //    drop = loadImage("rain.png");
  }


  void display() { 
    fill(c);
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
    c=color(0, random(200, 255), random(90, 152));
  }
}

