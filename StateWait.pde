class StateWait extends BaseState implements State {  
  void draw() {
    super.draw();
    textSize(100);
    
    String txt = "OKCraft";
    float w = textWidth(txt);

    text(txt, width/2-w/2, height/2);
    
    if(currentTime() > 5) {
      done = true;
    }
  }
}
