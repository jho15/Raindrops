color c = color(0);
int waitTime = 2000;

void setup() {
  size(350, 200);
  textSize(50);
  textAlign(CENTER);
}



void draw() {
  background (c);
  if (millis()%waitTime ==0) {
    c = color(random(255), random(255), random(255));
  }
  text(millis()/1000.0, width/2, height/2);
}

