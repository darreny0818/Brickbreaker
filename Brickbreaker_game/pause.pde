void pause() {
  
  float S1 = 1;
  float S2 = 1;
  float S3 = 1;
  
  background(#504C55);

  
  if (mouseX > 50 && mouseX < 250 && mouseY > 450 && mouseY < 510) {
   S1 = 10;
 } else {
   S1 = 1;
 }

  fill(0);  
  stroke(0);
  strokeWeight(S1);
  rect(50, 450, 200, 60);
  
  if (mouseX > 350 && mouseX < 550 && mouseY > 450 && mouseY < 510) {
   S2 = 10;
 } else {
   S2 = 1;
 }
  
  strokeWeight(S2);
  rect(350, 450, 200, 60);
  
  if (mouseX > 200 && mouseX < 400 && mouseY > 350 && mouseY < 410) {
    S3 = 10;
  } else {
    S3 = 1;
  }
  
  strokeWeight(S3);
  rect(200, 350, 200, 60);
  
  textSize(40);
  fill(255);
  text("OPTIONS", 150, 495);
  text("RESUME", 450, 495);
  text("HOME", 300, 395);

  fill(255);
  textSize(72);
  stroke(255);
  text("PAUSE", 300, 200);
  
}

void pauseClicks() {
  
  if (mouseX > 50 && mouseX < 250 && mouseY > 450 && mouseY < 510) {
    setup();
    mode = OPTIONS;
    lives = 3;
    score = 0;
    death = 0;
  }
  
  if (mouseX > 350 && mouseX < 550 && mouseY > 450 && mouseY < 510) {
    mode = GAME;
   
 }
 
 if (mouseX > 200 && mouseX < 400 && mouseY > 350 && mouseY < 410) {
    setup();
    mode = INTRO;
    lives = 3;
    score = 0;
    death = 0;
 }
  
}
