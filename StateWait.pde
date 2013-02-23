class StateWait extends BaseState implements State {  
  void draw() {
    super.draw();
    
    float bottomY = write("OkCraft", 100, height/2 - 50);

    if(currentTime() > 2) {
      bottomY = write("by Kai", 20, bottomY + 30);
    }
    if(currentTime() > 3) {
      bottomY = write("and aBe", 20, bottomY + 20);
    }
    
    if(currentTime() > 6) {
      done = true;
    }
  }
  
  float write(String txt, float sz, float y) {
    textAlign(CENTER, TOP);
    textSize(sz);
    //float w = textWidth(txt);
    text(txt, width/2, y);
    return y + textAscent() + textDescent();
  }
}
