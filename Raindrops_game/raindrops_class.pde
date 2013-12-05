

class Raindrop {
  PVector loc, vel, acc;
  int d;
  color c;
  PImage rain;

  Raindrop() {

    loc = new PVector (random(0, width), -d);
    vel = new PVector (0, random(1, 2));
    acc = new PVector(0, .005);
   rain = loadImage("rain.png");
   d= rain.width/4;
   
  }


  void display() { 
    fill(c);
    image(rain,loc.x, loc.y,d,d);
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
  
    void goAway() {
    loc.set(height*2,0);
    vel.set(0,0);
    acc.set(0,0);
  }
}


