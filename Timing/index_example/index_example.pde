int index;
int oldTime=0;
int currentTime=0;
int timeChange;


Raindrop [] drops = new Raindrop[200];

void setup() {
  size(800, 800);
  for (int i =0; i<drops.length; i++) {
    drops[i]=new Raindrop();
  }
}

void draw() {
  background(206, 91, 35);
  for (int i = 0; i<=index; i++) {
    drops[i].display();
    drops[i].fall();
  }


  currentTime = millis();
  timeChange = currentTime-oldTime;

  if (timeChange >=3000) {
    fill(0, 250, random(255));
    index++;
    oldTime = currentTime;
  }
}

//void keyPressed(){ 
//  if(index<drops.length-2){
//    index++;
//  }
//}


//
//
//
//int d;
//int oldTime =0; 
//int currentTime;
//int timeChange;
//
//
//
//void setup() {
//  size(500,500);
//  d=15;
//}
//
//void draw() {
//
//  colorMode(HSB,360,100,100);
//  currentTime = millis();
//  timeChange = currentTime-oldTime;
//
//  if (timeChange >=100) {
//   noStroke();
//    fill(200,20,100);
//    ellipse(random(width), random(height), d, d);
//    oldTime  = currentTime;
//  }
//}

