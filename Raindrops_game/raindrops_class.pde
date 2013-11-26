class Raindrop {
  int d;
  PVector loc, vel, acc;
//  PImage drop;
  
  Raindrop() {
//    d=50;
    loc = new PVector (random(0, width), 0);
    vel = new PVector (0, random(0, 2));
    acc = new PVector(0, .001);
    d = 10;
//    int r=int(random(1,5));
//    drop = loadImage("rain.png");
  }


    void display() { 
      ellipse(loc.x, loc.y, d,d);
    }

    void fall() {
     loc.add(vel); 
//     vel.add(acc);
      
      if (loc.x > width) {
        loc.x = 0;
      }

      if (loc.y > height) {
        loc.y = 0;
      }
    }
// void checkCatcher(catcher cat){
//    if(dist(loc.x,loc.y),cat.loc.x, cat.loc.y){  
//      
//    }

}

 
      

