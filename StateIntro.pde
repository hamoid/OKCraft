class StateIntro extends BaseState implements State {
  void draw() {
    super.draw();

    write("Instructions...", F20, height/2, #FFFFFF);
  }
  void mousePressed() {
    println("mouse pressed intro");
    done = true;
  }
}
