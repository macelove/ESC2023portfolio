class Frog {
  int x, y, health;
  PImage p1;

  Frog() {
    x = 220;
    y = 50;
    p1 = loadImage ("frog.png");
  }

  void display () {
    image (p1, x, y);
  }

  void move (char dir) {
    if (dir == 'w') {
      y = y-10;
    } else if (dir == 's') {
      y = y +10;
    } else if (dir == 'a') {
      x = x-10;
    } else if (dir == 'd') {
      x = x + 10;
    }
  }
}
