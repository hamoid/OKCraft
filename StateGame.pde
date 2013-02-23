class StateGame extends BaseState implements State {
  void draw() {
    super.draw();

    text("you are now playing", 30, 30);
  }
  void mousePressed() {
    println("mouse pressed game");
    done = true;
  }
}
