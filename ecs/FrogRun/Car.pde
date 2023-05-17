class Car {
  int x, y;
  PImage p3;

  Car() {
    x = int(random(100,300));
    y = int(random(100,300));
    p3 = loadImage ("car.png");
  }

  void display () {
    image (p3, x, y);
  }

  void move () {
    if(x>width){
   x = 0;
    }
   x++;
  }
}
