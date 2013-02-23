class BaseState {
  boolean done = false;
  int startMs;
    
  BaseState() {
    reset();
  }
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
    textFont(F10);
    text("t: " + currentTime(), 20, height-20);    
  }
  float write(String txt, PFont font, float y, color c) {
    textAlign(CENTER, TOP);
    textFont(font);
    fill(c);
    text(txt, width/2, y);
    return y + textAscent() + textDescent();
  }
  void mousePressed() {
  }
}
