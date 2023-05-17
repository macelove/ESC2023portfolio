// Macey Love | April 17, 2023 | EtchASketch
int x, y;
PImage pic;

void setup() {
// size (displayWidth, displayHeight);
size(800,658);
pic = loadImage("Etch.png");
x = width/2;
y=height/2;
}

void draw() {
//background(255);
image(pic, 0, 0);
strokeWeight(1);
if (keyPressed) {
    if (key =='w' ||  key == 'W') {
      moveUp(10);
    } else if (key =='s' ||  key == 'S') {
      moveDown(10);
    } else if (key =='a' ||  key == 'A') {
      moveLeft(10);
    } else if (key =='d' ||  key == 'D') {
      moveRight(10);
    }
}
}
   

void mousePressed() {// Used for saving the image with save frame
saveFrame("line-######.png");
}

void keyPressed() { //Used for drawing lines
}

void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}

void moveLeft(int rep) {
for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}

void moveUp(int rep) {
for (int i=0; i<rep; i=i+1) {
    point(x, y-i);
  }
  y = y - rep;
}
void moveDown(int rep){
  for (int i=0; i<rep; i=i+1) {
    point(x,y+i);
  }
  y= y + rep;
}
