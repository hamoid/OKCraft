class StateWait extends BaseState implements State {  
  void draw() {
    super.draw();
    
    float bottomY = write("OkCraft", F100, height/2 - 50, #FFFFFF);

    if(currentTime() > 2) {
      bottomY = write("by Kai", F20, bottomY + 30, #FFFFFF);
    }
    if(currentTime() > 3) {
      bottomY = write("and aBe", F20, bottomY + 20, #FFFFFF);
    }
    
    if(currentTime() > 6) {
      done = true;
    }
  }    
}
