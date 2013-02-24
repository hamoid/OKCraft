class StateEnd extends BaseState implements State {
  int y = 0;
  void draw() {
    drawEffects();
    
    super.draw();

    float bottomY = write("GAME OVRE", F100, height/2 - 50, #FFFFFF);

    if(currentTime() > 2) {
      bottomY = write("You refused to click Ok", F20, bottomY + 30, #FFFFFF);
    }
    if(currentTime() > 4) {
      bottomY = write("You are free", F20, bottomY + 20, #FFFFFF);
    }
    if(currentTime() > 6) {
      bottomY = write("You are so dead", F20, bottomY + 20, #FFFFFF);
    }    
  }
  void mousePressed() {
    if(currentTime() > 4) {
      done = true;
    }
  }
  void drawEffects() {
    // random flash
    if(random(100) > 98) {
      fill(44);
      rect(0, 0, width, height);
    }
    // falling horizontal stripe
    fill(random(100), 0, 0);
    noStroke();
    rect(0, y, width, 40);
    y = y - int(random(20));
    if(y < 0) {
      y = height;
    }
  }
}
