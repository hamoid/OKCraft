class StateIntro extends BaseState implements State {
  void draw() {
    super.draw();

    float bottomY = write("Please sturdy our license carefully", F48, height/2, #FFFFFF);

    if(currentTime() > 2) {
      bottomY = write("Then click teh aporpriate option", F20, bottomY + 30, #FFFFFF);
    }
    if(currentTime() > 4) {
      bottomY = write("Click the screen when ready", F20, bottomY + 20, #FF8888);
    }
  }
  void mousePressed() {
    println("mouse pressed intro");
    done = true;
  }
}
