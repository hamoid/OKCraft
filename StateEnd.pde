class StateEnd extends BaseState implements State {
  void draw() {
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
    println("mouse pressed end");
    done = true;
  }
}
