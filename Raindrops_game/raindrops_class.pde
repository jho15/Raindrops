class Raindrop {
  PVector loc, vel, acc;
  int d;
  color c;
  PImage rain;

  Raindrop() {

    loc = new PVector (random(0, width), -d);
    vel = new PVector (0, random(1, 2));
    acc = new PVector(0, .0075);
   rain = loadImage("rain.png");
   d= rain.width/4;
   
  }

//this displays the raindrop
  void display() { 
    fill(c);
    image(rain,loc.x, loc.y,d,d);
  }

//controls the speed/acceleration of a falling raindrop
  void fall() {
    loc.add(vel); 
    vel.add(acc);
  }
  //starts the raindrop from the top of the screen
  void reset() {
    loc.set(random(width), 0);
    vel.set(0, random(1, 4));
  }
// this part of the code would be used if the raindrops were still circles, it just shows which ones have been caught already  
//  void colorChange() {
//    c=color(0, 55, random(100,255));
//  }
  
  //moves the raindrop off the screen
    void goAway() {
    loc.set(height*2,0);
    vel.set(0,0);
    acc.set(0,0);
  }
}


