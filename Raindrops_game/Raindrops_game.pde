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
boolean start = true;
PImage heart;
PImage win;



void setup() {
  rx=50;
  ry=60;
  w=175;
  h=75;
  win=loadImage("winner.png");
  city = loadImage("nycrain.png");
  heart = loadImage("heart.png");
  size(city.width, city.height);
  for (int i = 0; i<dr.length; i++) {
    dr[i] = new Raindrop();
  }
  catcher=new Catcher();
  lives =5;
}

void draw() {
  if (gameOver == false) {
    background(city);

    //this is the start screen
    if (start==true) {
      background(0);
      fill(10, 250, 95);
      textSize(100);
      textAlign(CENTER);
      text("Click to Start", city.width/2, city.height/2);
    }
    else {

      //makes the raindrop fall
      for (int i =0; i<index; i++) {
        dr[i].display();
        dr[i].fall();
        if (dr[i].loc.y>height && dr[i].loc.y<height+dr[i].d/14 ) {
          lives--;
        }
        if (lives==0) {
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

      //this displays the score
      textSize(80);
      fill(255);
      text(score, 75, 100);

      //creates the lives counter
      image(heart, city.width-100, 85, heart.width/3, heart.height/3);
      textSize(30);
      fill(255);
      text(lives, city.width-100, 100);

      //this is the interval at which the raindrops fall
      if (millis() - oldTime > threshold) {
        if (index<dr.length) {
          index++;
          oldTime = millis();
        }
      }
    }

    //this displays Game Over screen
    if (gameOver == true) {
      background(0);
      textSize(100);
      fill(random(250, 255), 0, 0);  
      text("GAME OVER", 450, 300);
      //restart button
      fill(0, 255, 0);
      rect(rx, ry, w, h);
      textSize(25);
      fill(0);
      text("START OVER", 135, 105);
    }
    //shows how many lives are left off-screen
    println(lives);
  }
  //this is the restart button
  if (mousePressed == true && mouseX>rx && mouseX<rx+w && mouseY>ry && mouseY<ry+h && gameOver==true) {
    for (int i =0; i<index; i++) {   
      dr[i].reset();
    }
    gameOver = false;
    start = true;
    score = 0;
    lives = 5;
    index=1;
  }
  //  this takes you to a WINNING screen once the catcher has caught 20 raindrops; changing the "score == #" would change when the win screen shows
  if (score==20) {
    imageMode(CORNER);
    image(win, 0, 0, width, height);
    for (int i =0; i<index; i++) {   
      dr[i].goAway();
    }
    //this is the Play Again button
    fill(0, 255, 0);
    rect(rx-25, ry-40, w, h);
    textSize(25);
    fill(0);
    text("Play Again", 115, 65);
    //if the play again button is pressed, the game starts over again
    if (mousePressed == true && mouseX>rx && mouseX<rx+w && mouseY>ry && mouseY<ry+h && gameOver==false) {
      for (int i =0; i<index; i++) {   
        dr[i].reset();
      }
      start = true;
      score = 0;
      lives = 5;
      index=1;
    }
  }
}

void mousePressed() {
  start= false;
}

