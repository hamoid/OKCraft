class StateGame extends BaseState implements State {

  String [] lines;
  PFont f;
  Lives lives;
  int scroll = 0;

  public StateGame(){
    // init lives
    lives = new Lives();
    // init background
    lines = loadStrings("muchtext.txt");
  }

  void draw() {
    super.draw();

    lives.draw();
    if (lives.isDead()){
        done = true;
    }

    scroll_text();
    text("you are now playing", 30, 30);
  }

  void scroll_text(){
    fill(255,60);
    for (int i = 0 ; i < lines.length; i++) {
      textFont(F20);
      text(lines[(i + scroll) % lines.length], 10, i * 10);
    }
    scroll += 1;
  }
  
  void mousePressed() {
    println("mouse pressed game");
    done = true;
  }

  void keyPressed(){
    lives.click_ok();
  }
}
