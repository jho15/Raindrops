//color c = color(0);
//int waitTime = 2000;
//
//void setup() {
//  size(350, 200);
//  textSize(50);
//  textAlign(CENTER);
//}
//
//
//
//void draw() {
//  background (c);
//  if (millis()%waitTime ==0) {
//    c = color(random(255), random(255), random(255));
//  }
//  text(millis()/1000.0, width/2, height/2);
//}

int oldTime=0;
int currentTime=0;
int timeChange;

void setup() {
  size(500, 500);
}

void draw() {
  ellipse(mouseX, mouseY, 20, 20);
  currentTime = millis();
  timeChange = currentTime-oldTime;

  if (timeChange >=2000) {
    fill(0, 250, random(255));

    oldTime = currentTime;
  }
}

