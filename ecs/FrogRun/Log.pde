class Log {
  int x, y;
  PImage p2;

  Log() {
    x = int(random(100,300));
    y = int(random(100,300));
    p2 = loadImage ("log.png");
  }

  void display () {
    image (p2, x, y);
  }

  void move () {
   if(x>width){
     x = 0;
   }
   x++;
  }
}
