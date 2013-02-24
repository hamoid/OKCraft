class StateWait extends BaseState implements State {  
  void draw() {
    drawEffects();

    super.draw();
    
    float bottomY = write("OkCraft", F100, height/2 - 50, #FFFFFF);

    if(currentTime() > 2) {
      bottomY = write("by Kai", F20, bottomY + 30, #FFFFFF);
    }
    if(currentTime() > 3) {
      bottomY = write("and aBe", F20, bottomY + 20, #FFFFFF);
    }
    
    if(currentTime() > 6 || FAST) {
      done = true;
    }
  }  
  void drawEffects() {
    noFill();
    stroke(random(100), 0, 0);
    strokeWeight(30);
    float sz = random(width);
    ellipse(width/2, height/2, sz, sz);
    strokeWeight(1);
  }  
}
