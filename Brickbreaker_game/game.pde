void game() {
  
  background(#121CB7);
  strokeWeight(1);
  stroke(0);
  
  int i = 0;
  
  while (i < 40) {
    Brick b = myBricks.get(i);
    b.show();
    b.act();
    i++;
  }
  
  ball();
  paddle();
  

  fill(0);
  rect(545, 20, 10, 30);
  rect(565, 20, 10, 30);
  
  textSize(25);
  
  fill(0);
  text("Score: " + score, 75, 25);
  text("Lives: " + lives, 200, 25);
  
}

void gameClicks() {
  
  if (dist(560, 35, mouseX, mouseY) < 25) {
    mode = PAUSE;
  }
  
}

void ball() {
  
  fill(255);
  ellipse(bx, by, ballsize, ballsize);
  
  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  
  if (bx < 0 || bx > width) {
    bvx = - bvx; //bounce off left and right walls
    }
  if (by < 0 || by > height) {
    bvy = -bvy; //bounce off top and bottom walls
    }
    
    if (dist(bx, by, px, py) <= paddlesize/2 + ballsize/2) {
      bvx = (bx-px)/10;
      bvy = (by - py)/10;
    }
    
    if (by > height) {
      lives = lives - 1;
    }
    
    if (lives <= 0) {
      mode = GAMEOVER;
    }
    
    if (death == 40) {
      mode = WIN;
    }
    
  }
  
  void paddle () {
    
    fill(255);
    ellipse(px, py, paddlesize, paddlesize);
    
    if (rightKey) px = px + 5;
    
    if (px > 600 - paddlesize/2) {
      px = 600-paddlesize/2;
    }
    
    if (leftKey) px = px - 5;
    
    if (px < paddlesize/2) {
      px = paddlesize/2;
    }
  }
  
  
