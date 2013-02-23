class BaseState {
  boolean done = false;
  int startMs;
  
  BaseState() {
    startMs = millis();
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
