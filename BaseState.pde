class BaseState {
  boolean done = false;
  int startMs;
  
  PFont F10;
  PFont F20;
  PFont F48;
  PFont F100;
  
  BaseState() {
    startMs = millis();
    
    P10 = loadFont("Candara-10.vlw");
    P20 = loadFont("Candara-20.vlw");
    P48 = loadFont("Candara-48.vlw");
    P100 = loadFont("Candara-100.vlw");
  }
  float currentTime() {
    return (millis() - startMs)/1000.0;
  }
  boolean done() {
    return done;
  }
  void draw() {
    textSize(10);
    text("t: " + currentTime(), 20, height-20);    
  }
  void mousePressed() {
  }
}
