class StateEnd extends BaseState implements State {
  void draw() {
    super.draw();

    text("Game over", 30, 30);
  }
  void mousePressed() {
    println("mouse pressed end");
    done = true;
  }
}
