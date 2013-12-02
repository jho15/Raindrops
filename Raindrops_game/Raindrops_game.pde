Raindrop[] drops = new Raindrop[1];
Catcher catcher;


void setup() {
  size(500, 500);
  for (int i = 0; i<drops.length; i++) {
    drops[i] = new Raindrop();
  }
  catcher=new Catcher();
}


void draw() {
  background(0, 85, 120);
  for (int i =0; i<drops.length; i++) {
    drops[i].display();
    drops[i].fall();
    if (drops[i].loc.y>height+drops[i].d) {
      drops[i].reset();
    }
    if (catcher.catchDrop(drops[i])) {
      drops[i].reset();
    }
  }  

  catcher.display();
  catcher.update();
}

