Raindrop[] dr = new Raindrop[500];
int index =1;
int oldTime = 0;
int downpour = 100;
Catcher catcher;
int score;
PImage city;


void setup() {
  city = loadImage("street1.png");
  size(city.width,city.height);
  for (int i = 0; i<dr.length; i++) {
    dr[i] = new Raindrop();
  }
  catcher=new Catcher();
  
}

void draw() {
  background(city);

  for (int i =0; i<dr.length; i++) {
    dr[i].display();
    dr[i].fall();
    if (dr[i].loc.y>height+dr[i].d) {
      dr[i].reset();
    }
    if (catcher.catchDrop(dr[i]) == true) {
      dr[i].goAway();
      score++;
      downpour-=250;
    }
  }  

  catcher.display();
  catcher.update();
  textSize(80);
  fill(255,0,0);
  text(score, 75, 100);
  if(millis() - oldTime > downpour){
    if(index<dr.length){
      index++;
      oldTime = millis();
    }
  }


}

