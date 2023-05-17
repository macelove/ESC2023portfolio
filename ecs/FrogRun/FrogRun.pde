// Macey Love | 1 May 2023 | Collision Game
boolean play;
Frog fred;
Log log1;
Log log2;
Log log3;
Log log4;
Car car1;
Car car2;
Car car3;
Car car4;
int score;
float logDist;
float log1Dist;
float carDist;
float car1Dist;
float log2Dist;
float car2Dist;
float log3Dist;
float car3Dist;

void setup() {
  size(500, 500);
  play = false;
  fred = new Frog();
  log1 = new Log();
  car1 = new Car();
  log2 = new Log ();
  car2 = new Car ();
  log3 = new Log ();
  car3 = new Car ();
  log4 = new Log ();
  car4 = new Car ();
  score = 0;
}

void draw() {
  println(logDist);
  if (play == false) {
    startScreen();
  } else {
    logDist = dist(fred.x, fred.y, log1.x, log1.y);
    carDist = dist(fred.x, fred.y, car1.x, car1.y);
    log1Dist = dist(fred.x, fred.y, log2.x, log2.y);
    car1Dist = dist(fred.x, fred.y, car2.x, car2.y);
    log2Dist = dist(fred.x, fred.y, log3.x, log3.y);
    car2Dist = dist(fred.x, fred.y, car3.x, car3.y);
    log3Dist = dist(fred.x, fred.y, log4.x, log4.y);
    car3Dist = dist(fred.x, fred.y, car4.x, car4.y);
    background(128);
    drawBackground();
    infoPanel();
    fred.display();
    log1.display();
    log1.move();
    log2.display();
    log2.move();
    log3.display();
    log3.move();
    log4.display();
    log4.move();
    car1.display();
    car1.move();
    car2.display();
    car2.move();
    car3.display();
    car3.move();
    car4.display();
    car4.move();
    if (logDist < 60) {
      score = score + 1;
    }
     if (log1Dist < 60) {
      score = score + 1;
      }
     if (log2Dist < 60) {
      score = score + 1;
      }
     if (log3Dist < 60) {
      score = score + 1;
    }
    if (carDist < 20) { 
      score = score - 1;
      car1.x = width;
      gameOver();
    }
    if (car1Dist < 20) {
      score = score - 1;
      car2.x = width;
      gameOver();
      }
    if (car2Dist < 20) {
      score = score - 1;
      car3.x = width;
      gameOver();
      }
    if (car3Dist < 20) {
      score = score - 1;
      car4.x = width;
      gameOver();
    }
  }
}






void keyPressed () {
  if (key =='w' ||  key == 'W') {
    fred.move('w');
  } else if (key =='s' ||  key == 'S') {
    fred.move('s');
  } else if (key =='a' ||  key == 'A') {
    fred.move('a');
  } else if (key =='d' ||  key == 'D') {
    fred.move('d');
  } else if (key ==' ') {
    play = true;
  }
}



void drawBackground() {
  fill(#C3EEFA);
  rect(0, 400, width, 100);
}

void startScreen() {
  background(#AFD5F0);
  fill(255);
  text("Welcome to Frogger", 200, 250);
  text("By Macey Love", 220, 300);
  text("Press the space bar to start the game", 160, 350);
}

void gameOver() {
  background(#AFD5F0);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("Game Over!", 200, height/2, width/2);
  text("Score: " + score, 200,320);
  text("Press spacebar to start the game", 200, 340);
  noLoop();
}

void infoPanel() {
  fill(#EAFBFF);
  rect (0, 0, width, 80);
  fill(0);
  text("Score: " + score, 20, 70);
  text("Avoid cars, hit logs", 20, 50);
}

void target() {
  println(logDist);
  if (logDist<20) {
    score = score+1;
    if (carDist<20) {
      score = score+1;
    }
  }
}
