void intro() {
  
  background(#620E9B);
 
  float sw = 1;
  float sw2 = 1;


  fill(0);
  stroke(0);


  if (mouseX > 50 && mouseX < 250 && mouseY > 470 && mouseY < 530) {
    sw = 10;
  } else {
    sw = 1;
  }

  strokeWeight(sw);
  rect(50, 470, 200, 60);

  if (mouseX > 350 && mouseX < 550 && mouseY > 470 && mouseY < 530) {
    sw2 = 10;
  } else {
    sw2 = 1;
  }

  strokeWeight(sw2);
  rect(350, 470, 200, 60);
  
  strokeWeight(1);
  textSize(40);
  fill(255);
  text("OPTIONS", 150, 515);
  text("START", 450, 515);
  
  textSize(50);
  fill(0);
  text("BRICKBREAKER", 300, 200);
  text("GAME", 300, 275);
}

void introClicks() {

  if (mouseX > 50 && mouseX < 250 && mouseY > 470 && mouseY < 530) {
   mode = OPTIONS;

  }
  
   if (mouseX > 350 && mouseX < 550 && mouseY > 470 && mouseY < 530) {
    mode = GAME;

  }

  
}
