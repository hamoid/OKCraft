class StateGame extends BaseState implements State {

  String [] lines;
  PFont f;
  int scroll = 0;

  public StateGame(){
    // background initialization
    lines = loadStrings("muchtext.txt");
    f = loadFont("Candara-48.vlw");
  }

  void draw() {
    super.draw();
    scroll_text();
    text("you are now playing", 30, 30);
  }

  void scroll_text(){
    fill(255,60);
    for (int i = 0 ; i < lines.length; i++) {
      textFont(f, 20);
      text(lines[(i + scroll) % lines.length], 10, i * 10);
    }
    scroll += 1;
  }
  
  void mousePressed() {
    println("mouse pressed game");
    done = true;
  }
}
