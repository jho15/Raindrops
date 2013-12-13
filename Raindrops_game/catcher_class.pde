class Catcher {
  PVector loc;
  int d;
  PImage bucket;

  Catcher() {
    loc= new PVector (mouseX, height-d);
    d=100;
    bucket = loadImage("bucket.png");
  }

  void display() {
    fill(255);
    imageMode(CENTER);
    image(bucket, loc.x, loc.y, bucket.width/3, bucket.height/3);
  }

  void update() {
    loc.set(mouseX, height-d);
  }

 //this checks to see if the catcher has actually caught the drop. if it has, then the score increases and the drop is removed from the screen. if it is not true, then the drop is reset
  boolean catchDrop(Raindrop drop) {
    if (loc.dist(drop.loc)< d/2 +drop.d/2) {
           return true;
    }
    else {
      return false;
    }
  }
}

