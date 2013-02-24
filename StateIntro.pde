class StateIntro extends BaseState implements State {
  void draw() {
    drawEffects();
    
    super.draw();

    float bottomY = write("Please sturdy our license carefully", F48, height/2, #FFFFFF);

    if(currentTime() > 2) {
      bottomY = write("Then click teh aporpriate option", F20, bottomY + 30, #FFFFFF);
    }
    if(currentTime() > 4) {
      bottomY = write("Clikc the screen when reedy", F20, bottomY + 20, #FF8888);
    }
  }
  void mousePressed() {
    done = true;
  }
  void drawEffects() {
    fill(random(100), 0, 0);
    noStroke();
    rect(0, random(height), width, 40);
  }
}
