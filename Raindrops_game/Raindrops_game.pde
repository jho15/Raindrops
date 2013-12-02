Raindrop[] dr = new Raindrop[10];

Catcher catcher;


void setup() {
  size(500, 500);
  for (int i = 0; i<dr.length; i++) {
    dr[i] = new Raindrop();
  }
  catcher=new Catcher();
}

void draw() {
  background(0, 85, 120);
  for (int i =0; i<dr.length; i++) {
    dr[i].display();
    dr[i].fall();
    if (dr[i].loc.y>height+dr[i].d) {
      dr[i].reset();
    }
    if (catcher.catchDrop(dr[i]) == true) {
      dr[i].reset();
    }
  }  

  catcher.display();
  catcher.update();
}

