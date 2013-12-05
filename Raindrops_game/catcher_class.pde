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
    //    ellipse(loc.x, loc.y, d, d);
    image(bucket, loc.x, loc.y, bucket.width/3, bucket.height/3);
  }

  void update() {
    loc.set(mouseX, height-d);
  }



  boolean catchDrop(Raindrop drop) {
    if (loc.dist(drop.loc)< d/2 +drop.d/2) {
      drop.colorChange();
      return true;
    }
    else {
      return false;
    }
  }
}

