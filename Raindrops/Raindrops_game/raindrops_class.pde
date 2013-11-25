class Raindrop {
  PVector loc, vel, acc;
  PImage drop;
  
  Raindrop() {
//    d=50;
    loc = new PVector (random(0, width), 0);
    vel = new PVector (0, random(0, 2));
    acc = new PVector(0, .001);

//    int r=int(random(1,5));
    drop = loadImage("rain.png");
  }


    void display() { 
      image(drop,loc.x, loc.y,drop.width/3,drop.height/3);
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
  }


