class StateIntro extends BaseState implements State {
  void draw() {
    super.draw();

    text("This is the intro", 30, 30);
  }
  void mousePressed() {
    println("mouse pressed intro");
    done = true;
  }
}
