Raindrop[] drops = new Raindrop[12];
Catcher catcher;


void setup() {
size(500,500);
  for (int i = 0; i<drops.length; i++) {
    drops[i] = new Raindrop();
  }
  catcher=new Catcher();
  }


  void draw() {
     background(0,55,100);
     for (int i =0; i<drops.length; i++) {
      drops[i].display();
      drops[i].fall();
    }
catcher.display();
catcher.update();

}

