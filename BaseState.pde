// This is the base state, which provides default behaviours for
// each state object inheriting from it.
class BaseState {
  // When a state is done, we should move to the next one
  boolean done = false;
  
  // Used to find out how many milliseconds this
  // state has been running
  int startMs;
    
  BaseState() {
    reset();
  }
  // We can reset the time, in case we restart a state
  void reset() {
    startMs = millis();
  }
  float currentTime() {
    return (millis() - startMs)/1000.0;
  }
  boolean done() {
    return done;
  }
  void draw() {
    // Draw how many seconds this state has been running
    //textFont(F10);
    //text("t: " + currentTime(), 20, height-20);    
  }
  // Write centered text on the screen, return the bottom y
  // to be able to write text under previous text
  float write(String txt, PFont font, float y, color c) {
    textAlign(CENTER, TOP);
    textFont(font);
    fill(c);
    text(txt, width/2, y);
    return y + textAscent() + textDescent();
  }
  void mousePressed() {
  }
  void keyPressed() {
  }
}
