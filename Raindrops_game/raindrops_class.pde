class Raindrop {
  PVector loc, vel, acc;
  int d;

  Raindrop() {
    d=50;
    loc = new PVector (random(0, width), 0);
    vel = new PVector (0, random(0, 2));
    acc = new PVector(0, .001);
    d = 10;
  }


  void display() { 
    ellipse(loc.x, loc.y, d, d);
  }

  void fall() {
    loc.add(vel); 
    vel.add(acc);
  }
  void reset() {
    loc.set(random(width), 0);
    vel.set(0, random(1, 3));
  }
}
}
// void checkCatcher(catcher cat){
//    if(dist(loc.x,loc.y),cat.loc.x, cat.loc.y){  
//      
//    }

