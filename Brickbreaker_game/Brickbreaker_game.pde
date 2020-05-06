ArrayList<Brick> myBricks;

final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int WIN = 5;
final int OPTIONS = 6;
int mode = INTRO;

//ball variables
float bx, by, bvx, bvy;

//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey;

//grid planning variables
int gridx, gridy;

int lives, score;

//sliders
float slider1 = 150;
float slider2 = 150;

//sliders map
float ballsize = 20;
float paddlesize = 100;

int death = 0;

int highscore = 0;

void setup () {
  
  size(600, 600);
  
  myBricks = new ArrayList<Brick>();
  
  gridx = 25;
  gridy = 85;
  int i = 0;
  while (i < 50) {
    myBricks.add( new Brick() );
    gridx = gridx + 60;
    if (gridx > 600) {
      gridx = 25;
      gridy = gridy + 60;
    }
    i++;
  }
  
  textAlign(CENTER);
  
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  
  //paddle
  px = width/2;
  py = height + 10;
  
  lives = 3;
  score = 0;

}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == WIN) {
    win();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("?");
  }
}
