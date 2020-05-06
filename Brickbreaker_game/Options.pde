void options () {
  
  background(#3A3A48);
  
  float SW111 = 1;
  float SW211 = 1;
  
   if (mouseX > 75 && mouseX < 275 && mouseY > 430 && mouseY < 490) {
   SW111 = 10;
 } else {
   SW111 = 1;
 }

  fill(0);  
  stroke(0);
  strokeWeight(SW111);
  rect(75, 430, 200, 60);
  
  if (mouseX > 325 && mouseX < 525 && mouseY > 430 && mouseY < 490) {
   SW211 = 10;
 } else {
   SW211 = 1;
 }
  
  strokeWeight(SW211);
  rect(325, 430, 200, 60);
  
  textSize(30);
  fill(255);
  text("BACK", 175, 470);
  text("START", 425, 470);

  stroke(0);
  textSize(72);
  text("OPTIONS", 300, 150);
  textSize(20);
  text("PLEASE SELECT", 300, 200);
  
  //sliders
  
  fill(0);
  stroke(0);
  strokeWeight(3);
  line(150, 300, 450, 300);
  line(150, 360, 450, 360);
  fill(255);
  strokeWeight(1);
  ellipse(slider1, 300, 40, 40);
  ellipse(slider2, 360, 40, 40);
  
  textSize(20);
  text("PADDLE SIZE", 300, 280);
  text("BALL SIZE", 300, 340);
  if (dist(slider1, 300, mouseX, mouseY) < 20 && mousePressed) {
    slider1 = mouseX;
  }
  
  if (dist(slider2, 360, mouseX, mouseY) < 20 && mousePressed) {
    slider2 = mouseX;
  }
  
  if (slider1 <= 150) {
    slider1 = 150;
  }
  
  if (slider1 >= 450) {
    slider1 = 450;
  }
  
  if (slider2 <= 150) {
    slider2 = 150;
  }
  
  if (slider2 >= 450) {
    slider2 = 450;
  }
  
  paddlesize = map(slider1, 150, 450, 75, 175);
  ballsize = map(slider2, 150, 450, 10, 30);
  
}

void optionClicks () {
  
  if (mouseX > 325 && mouseX < 525 && mouseY > 430 && mouseY < 490) {
    setup ();
    mode = GAME;
    lives = 3;
    score = 0;
  }
  
  if (mouseX > 75 && mouseX < 275 && mouseY > 430 && mouseY < 490) {
    setup ();
    mode = INTRO;
    lives = 3;
    score = 0;
  }
  
}
