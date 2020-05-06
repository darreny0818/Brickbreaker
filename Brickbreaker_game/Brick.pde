class Brick {

  //1. Instance Variables
  float x, y;
  boolean hp = true;
  int colour ; //should be colour
  color c;

  //2. Constructor
  Brick() {
    x = gridx;
    y = gridy;
    colour = int (random(0, 2.1));
  }

  //3. Behaviour Functions
  void act() {
    
     if (colour == 2) {
      c = #2C2929;
      if (dist(x, y, bx, by) < 25 + ballsize/2) {
      colour = 1;
      bvx = (bx - x)/8;
      bvy = (by - y)/8;
      score++;
      }
    } else if( colour == 1) {
      c = 255;
      if (dist(x, y, bx, by) < 25 + ballsize/2) {
      colour= 0;
      bvx = (bx - x)/8;
      bvy = (by - y)/8;
      score++;
      }
    } else if (colour == 0) {
      c = 0;
      if (dist(x, y, bx, by) < 25 + ballsize/2) {
      hp = false;
      bvx = (bx - x)/8;
      bvy = (by - y)/8;
      score++;
      colour = -1;
      death = death + 1;
      }
    }
  }

  void show() {
    
    if (colour == 1 || colour == 2 || colour == 0) {
      hp = true;
      fill(c);
      ellipse(x, y, 50, 50);
    } else {
      hp = false;
    }
    
  }
}
