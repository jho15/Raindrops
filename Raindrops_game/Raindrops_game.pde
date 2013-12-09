Raindrop[] dr = new Raindrop[300];
int index =1;
int oldTime = 0;
int threshold = 3000;
Catcher catcher;
int score;
PImage city;
boolean gameOver = false;
int rx, ry, w, h;
int lives;



void setup() {
  rx=50;
  ry=60;
  w=175;
  h=75;
  city = loadImage("street1.png");
  size(city.width, city.height);
  for (int i = 0; i<dr.length; i++) {
    dr[i] = new Raindrop();
  }
  catcher=new Catcher();
  lives =5;
}

void draw() {
  background(city);

  //makes the raindrop fall
  for (int i =0; i<index; i++) {
    dr[i].display();
    dr[i].fall();
    if (dr[i].loc.y>height && dr[i].loc.y<height+dr[i].d/14 ) {
      lives--;
    }
    if(lives==0){
      gameOver = true;
    }
    if (catcher.catchDrop(dr[i]) == true) {
      dr[i].goAway();
      score++;
      threshold-=20;
    }
  }  

  catcher.display();
  catcher.update();

  textSize(80);
  fill(255, 0, 0);
  text(score, 75, 100);

  //this the interval at which the raindrops fall
  if (millis() - oldTime > threshold) {
    if (index<dr.length) {
      index++;
      oldTime = millis();
    }
  }
  //this displays Game Over screen
  if (gameOver == true) {
    background(0);
    textSize(100);
    fill(random(100, 255), 0, 0);
    text("GAME OVER", 200, 250);
    //restart button
    fill(0, 255, 0);
    rect(rx, ry, w, h);
    textSize(25);
    fill(0);
    text("START OVER", 60, 105);
  }
  println(lives);
}

//this is the restart button
void mousePressed() {

  if (mouseX>rx && mouseX<rx+w && mouseY>ry && mouseY<ry+h) {
    for (int i =0; i<index; i++) {   
      dr[i].reset();
    }
    gameOver = false;
    score = 0;
    
  }
}

